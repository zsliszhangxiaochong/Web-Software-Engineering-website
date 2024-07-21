package com.contoller;

import com.entity.News;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/filter/welcome")
public class Welcome extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        List<News> news=new ArrayList<News>();
        String sql = "select * from News ";
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
        req.getRequestDispatcher("/WEB-INF/jsp/welcome.jsp").forward(req, resp);
    }

}
