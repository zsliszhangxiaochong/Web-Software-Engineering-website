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

@WebServlet("/news")
public class news extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String sql = "select * from News where id = ?";
        News new1 = null;
        try (Connection connection = DataSourceUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);) {
            statement.setString(1, id);
            try (ResultSet rs = statement.executeQuery();) {
                if (rs.next()) {
                    new1=new News();
                    new1.setId(rs.getInt("id"));
                    new1.setTitle(rs.getString("title"));
                    new1.setContent(rs.getString("content"));
                    new1.setImageUrl(rs.getString("image_url"));
                    new1.setPublishDate(rs.getDate("publish_date"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("news", new1);
        req.getRequestDispatcher("/WEB-INF/jsp/news.jsp").forward(req, resp);
    }
}
