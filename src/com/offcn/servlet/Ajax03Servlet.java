package com.offcn.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Ajax03Servlet", value = "/Ajax03Servlet")
public class
Ajax03Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        //{"username":"zhangsan"}
        String person = "{\"username\":\"zhangsan\",\"age\":\"19\"}";
        response.getWriter().println(person);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }
}
