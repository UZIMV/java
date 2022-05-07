package com.offcn.service;

import com.offcn.bean.User;
import com.offcn.dao.UserDao;
import com.offcn.dao.UserDaoImpl;

public class UserServiceImpl implements UserService{
    UserDao ud = new UserDaoImpl();
    @Override
    public int insertUser(User user) {
        return ud.insertUser(user);
    }

    @Override
    public User CheckUsername(String username) {
        return ud.CheckUsername(username);
    }
}
