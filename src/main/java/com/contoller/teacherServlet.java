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
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/teacher")
public class teacherServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id == null) id="1";
        List<Teacher> teachers=new ArrayList<Teacher>();
        String title;
        switch (id){
            case "1": title = "教授";
                     break;
            case "2": title = "副教授";
                     break;
            case "3": title = "讲师";
                     break;
            default: title = "教授"; break;  // 处理未知或非法id
        }
        String sql = "select * from teacher where title = ?";
        Teacher teacher = null;
        try (Connection connection = DataSourceUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);) {
            statement.setString(1, title);
            try (ResultSet resultSet = statement.executeQuery();) {
               while (resultSet.next()) {
                    teacher = new Teacher();
                    teacher.setId(resultSet.getInt("id"));
                    teacher.setName(resultSet.getString("name"));
                    teacher.setIntroduceText(resultSet.getString("introduce_Text"));
                    teacher.setTitle(resultSet.getString("title"));
                    teacher.setEmail(resultSet.getString("email"));
                    teacher.setPhotoUrl(resultSet.getString("photo_Url"));
                    teachers.add(teacher);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("teachers", teachers);
        req.getRequestDispatcher("/WEB-INF/jsp/teacher.jsp").forward(req, resp);
    }
}
