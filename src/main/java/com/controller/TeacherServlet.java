package com.controller;

import com.service.TeacherService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/allTeachers")
public class TeacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var allTeachers = TeacherService.listTeacher();
        req.setAttribute("allTeachers", allTeachers);
        req.getRequestDispatcher("/WEB-INF/jsp/teachers.jsp").forward(req, resp);
    }
}