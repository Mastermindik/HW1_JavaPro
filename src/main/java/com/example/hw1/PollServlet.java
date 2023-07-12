package com.example.hw1;

import java.io.*;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicInteger;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "pollServlet", value = "/hello-servlet")
public class PollServlet extends HttpServlet {
    private AtomicInteger sunny = new AtomicInteger(0);
    private AtomicInteger cloudy = new AtomicInteger(0);
    private AtomicInteger java = new AtomicInteger(0);
    private AtomicInteger javascript = new AtomicInteger(0);

    public void init() {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("index.jsp");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String weather = request.getParameter("weather");
        String language = request.getParameter("language");

        if (weather.equals("sunny")) {
            sunny.incrementAndGet();
        } else {
            cloudy.incrementAndGet();
        }
        if (language.equals("java")) {
            java.incrementAndGet();
        } else {
            javascript.incrementAndGet();
        }

        HttpSession session = request.getSession(true);
        session.setAttribute("sunny", sunny.get());
        session.setAttribute("cloudy", cloudy.get());
        session.setAttribute("java", java.get());
        session.setAttribute("javascript", javascript.get());

        response.sendRedirect("result.jsp");
    }


    public void destroy() {
    }
}