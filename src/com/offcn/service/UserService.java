package com.offcn.service;

import com.offcn.bean.User;

public interface UserService {
    int insertUser(User user);
    User CheckUsername(String username);
}
