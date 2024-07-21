package com.contoller;


import com.entity.User;
import com.service.Userservice;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/filter/login")/*向这个路径发送请求都由loginservlet来进行处理*/
public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        var account = req.getParameter("account");
        var password = req.getParameter("password");
        User user = Userservice.getUser(account,password);
        if(user !=null){
            req.getSession().setAttribute("user",user);
            resp.sendRedirect(req.getContextPath()+"/filter/welcome");
            return;
        }
        resp.sendRedirect(req.getContextPath()+"/index");
    }

}
