package com.oldstore.dao;

import com.oldstore.model.User;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserDAO {
    int insert(User record);

    int update(User record);

    int delete(Integer id);

    User queryById(Integer id);

    List<User> queryAll();
}