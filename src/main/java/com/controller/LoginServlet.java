package com.controller;

import com.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/welcome.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String url;
        if("BO".equals(username) && "123456".equals(password)){
            User u = new User("BO");
            req.getSession().setAttribute("user", u);//整个会话内
            url = "/welcome";
        }else {
            url = "/index.html";
        }
        ////重定向HTTP请求
        //这个响应包含了新的URL，浏览器（或任何发出请求的客户端）接收到这个响应后，会自动发起一个新的GET请求到指定的新URL
        resp.sendRedirect(req.getContextPath() + url);//getContextPath()获取servlet路径
    }
}

