package com.oldstore.service;

import com.oldstore.model.User;

import java.util.List;

public interface UserService {
    int insert(User record);

    int update(User record);

    int delete(Integer id);

    User queryById(Integer id);

    List<User> queryAll();
}
