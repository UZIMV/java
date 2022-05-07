package com.offcn.servlet;

import com.offcn.bean.User;
import com.offcn.service.UserService;
import com.offcn.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
@WebServlet(name = "InsertServlet", value = "/InsertServlet")
public class InsertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String telephone = request.getParameter("telephone");
        String birthday = request.getParameter("birthday");
        //创建对象  封装到对象中
        //日期  格式化
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        com.offcn.bean.User user = null;
        try {
            user = new User(username,password,name,telephone,sdf.parse(birthday));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //创建对象  service
        UserService us = new UserServiceImpl();
        int result = us.insertUser(user);   //0添加失败
        if (result != 0){
            //转发成功
            request.getRequestDispatcher("success.jsp").forward(request,response);
        }else {
            //转发失败
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().println("defeated!!!");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
