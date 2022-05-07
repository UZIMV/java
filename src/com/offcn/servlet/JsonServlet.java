package com.offcn.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.offcn.bean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "JsonServlet", value = "/JsonServlet")
public class JsonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //转化对象
        User user = new User(1,"李白",209);
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(user);
        System.out.println(json);
        //转换集合
        List<User> list1 = new ArrayList<User>();
        User user1 = new User(1, "诸葛亮", 21);
        User user2 = new User(2, "公孙离", 21);
        User user3 = new User(1, "上官婉儿", 21);
        list1.add(user1);
        list1.add(user2);
        list1.add(user3);
        ObjectMapper mapper1 = new ObjectMapper();
        String list_json = mapper1.writeValueAsString(list1);
        System.out.println(list_json);
        //转换多个集合,存在map里
        List<User> list2 = new ArrayList<>();
        User user4 = new User(4, "白起", 22);
        User user5 = new User(5, "关羽", 22);
        User user6 = new User(6, "黄忠", 22);
        list2.add(user4);
        list2.add(user5);
        list2.add(user6);

        Map<String, List<User>> map = new HashMap<>();
        map.put("list1",list1);
        map.put("list2",list2);
        ObjectMapper mapper2 = new ObjectMapper();
        String map_json = mapper2.writeValueAsString(map);
        System.out.println(map_json);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }
}
