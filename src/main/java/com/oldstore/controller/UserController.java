package com.oldstore.controller;

import com.oldstore.model.User;
import com.oldstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/add")
    public void test() {
        User user = new User();
        user.setActive("激活");
        user.setAddress("湖州");
        user.setCreateDate(new Date());
        user.setEmail("ee765f@qq.com");
        user.setLoginName("666");
        user.setPassWord("sx");
        user.setName("sx");
        user.setPhone("166");
        user.setRole(0);
        user.setSex(0);
        userService.insert(user);
    }

}
