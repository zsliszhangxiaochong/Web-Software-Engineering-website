package com.contoller;

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

@WebServlet("/teacher_introduction")
public class teacher_introduction extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String sql = "select * from teacher where id = ?";
        Teacher teacher = null;
        try (Connection connection = DataSourceUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);) {
            statement.setString(1, id);
            try (ResultSet resultSet = statement.executeQuery();) {
                if (resultSet.next()) {
                    teacher = new Teacher(); // 在使用之前，先实例化 teacher
                    teacher.setId(resultSet.getInt("id"));
                    teacher.setName(resultSet.getString("name"));
                    teacher.setIntroduceText(resultSet.getString("introduce_Text"));
                    teacher.setTitle(resultSet.getString("title"));
                    teacher.setEmail(resultSet.getString("email"));
                    teacher.setPhotoUrl(resultSet.getString("photo_Url"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("teacher", teacher);
        req.getRequestDispatcher("/WEB-INF/jsp/teacher_introduction.jsp").forward(req, resp);
    }
}
