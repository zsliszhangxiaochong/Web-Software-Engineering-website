package com.contoller;

import com.util.DataSourceUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/updatenews")
public class updatenews extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/updatenews.jsp").forward(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        String url = req.getParameter("url");
        String sql = "UPDATE News SET title=?, content=?, image_url=? WHERE id=?";
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement statement=connection.prepareStatement(sql);){
            statement.setString(1, title);
            statement.setString(2, content);
            statement.setString(3, url);
            statement.setString(4, id);  // 适配 ID 为整数类型
            /*要记得执行SQL语句*/
            statement.executeUpdate();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+"/filter/welcome");
    }
}