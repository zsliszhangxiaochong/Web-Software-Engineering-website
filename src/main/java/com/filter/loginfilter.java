package com.filter;

import com.entity.User;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;

import java.io.IOException;
import java.util.List;

@WebFilter("/filter/*")
public class loginfilter extends HttpFilter {
    private final List<String> excludes = List.of("/filter/login");
    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain) throws IOException, ServletException {
        //User user=(User)req.getSession.getAttribut("user");
        for(String e:excludes){
            if(e.equals(req.getServletPath())){
                chain.doFilter(req, resp);
                return;
            }
        }
        User user = (User) req.getSession().getAttribute("user");
        if(user != null){
            chain.doFilter(req, resp);
            return;
        }
        resp.sendRedirect(req.getContextPath()+"/filter/login");
    }
}
