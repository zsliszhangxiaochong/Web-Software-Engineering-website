package com.contoller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/laboratory_detail")
public class laboratory_detail extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String id = req.getParameter("id");
        switch (id){
            case "931":req.getRequestDispatcher("/WEB-INF/jsp/931.jsp").forward(req, resp);
                        break;
            case "908":req.getRequestDispatcher("/WEB-INF/jsp/908.jsp").forward(req, resp);
                break;
            case "909":req.getRequestDispatcher("/WEB-INF/jsp/909.jsp").forward(req, resp);
                break;
        }

    }

}