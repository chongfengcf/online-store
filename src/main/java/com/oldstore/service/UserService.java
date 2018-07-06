package com.oldstore.service;

import com.oldstore.model.User;
import sun.security.util.Password;

import java.util.List;

public interface UserService {
    int insert(User record);

    int update(User record);

    int delete(Integer id);

    User queryById(Integer id);

    List<User> queryAll();

    User authLogin(String username, String password);
}
