package com.offcn.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.offcn.bean.Country;
import com.offcn.service.CountryService;
import com.offcn.service.CountryServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "CountryServlet", value = "/CountryServlet")
public class CountryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CountryService cs = new CountryServiceImpl();
        List<Country> list = cs.selectAllCountry();

        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();

        ObjectMapper mapper = new ObjectMapper();
        String s = mapper.writeValueAsString(list);
        System.out.println(s);
        writer.print(s);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }
}
