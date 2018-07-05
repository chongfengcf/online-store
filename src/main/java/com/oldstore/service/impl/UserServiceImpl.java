package com.oldstore.service.impl;

import com.oldstore.dao.UserDAO;
import com.oldstore.model.User;
import com.oldstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userdao;


    @Override
    public int insert(User record) {
        return userdao.insert(record);
    }

    @Override
    public int update(User record) {
        return userdao.update(record);
    }

    @Override
    public int delete(Integer id) {
        return userdao.delete(id);
    }

    @Override
    public User queryById(Integer id) {
        return userdao.queryById(id);
    }

    @Override
    public List<User> queryAll() {
        return userdao.queryAll();
    }
}
