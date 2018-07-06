package com.oldstore.controller;

import com.oldstore.model.User;
import com.oldstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.support.DefaultMultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/front/register")
    public String login()
    {
        return "register";
    }

    @RequestMapping("/front/add")
    public String frontAdd(User user)
    {
        userService.insert(user);
        return "success";
    }

    @RequestMapping("/front/login")
    public String login(String username, String password, HttpServletRequest request)
    {
        User user = userService.authLogin(username,password);
        if (user!=null)
        {
            request.getSession().setAttribute("user",user);
            request.getSession().setAttribute("username",username);
            return "redirect:/front/index";
        }else
        {
            return "register";
        }
    }

}
