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

@WebServlet("/deletenews")
public class deletenews extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String sql = "delete from News  WHERE id=?";
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement statement=connection.prepareStatement(sql);){
            statement.setString(1,id);
            /*要记得执行SQL语句*/
            statement.executeUpdate();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+"/filter/welcome");
    }
}