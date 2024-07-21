package com.contoller;

import com.entity.News;
import com.entity.Teacher;
import com.util.DataSourceUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/index")
public class indexServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            req.setCharacterEncoding("UTF-8");
            List<News> news=new ArrayList<News>();
            String sql = "SELECT * FROM News ORDER BY id DESC;";
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement statement=connection.prepareStatement(sql)){
            try(ResultSet rs=statement.executeQuery()){
                while(rs.next()){
                    News new1=new News();
                    new1.setId(rs.getInt("id"));
                    new1.setTitle(rs.getString("title"));
                    new1.setContent(rs.getString("content"));
                    new1.setImageUrl(rs.getString("image_url"));
                    new1.setPublishDate(rs.getDate("publish_date"));
                    news.add(new1);
                }
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        req.setAttribute("news",news);
            req.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(req, resp);
    }

}

/*
package com.contoller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
 public class indexServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}*/