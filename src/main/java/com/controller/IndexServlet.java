package com.controller;

import com.service.NewService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/index.html")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var allNews = NewService.listNew();
        var type1News = NewService.Type1New();
        var type2News = NewService.Type2New();
        req.setAttribute("allNews", allNews);
        req.setAttribute("type1News", type1News);
        req.setAttribute("type2News", type2News);
        req.getRequestDispatcher("/WEB-INF/index.jsp").forward(req, resp);
    }
}
