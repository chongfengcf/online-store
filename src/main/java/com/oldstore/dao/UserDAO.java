package com.oldstore.dao;

import com.oldstore.model.User;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import sun.security.util.Password;

@Repository
public interface UserDAO {
    int insert(User record);

    int update(User record);

    int delete(Integer id);

    User queryById(Integer id);

    List<User> queryAll();

    User authLogin(@Param("username")String username, @Param("password")String password);
}