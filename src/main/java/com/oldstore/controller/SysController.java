package com.oldstore.controller;

import com.oldstore.model.User;
import com.oldstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class SysController {

    @Autowired
    private UserService userService;

    @RequestMapping("/sys/index")
    public String toIndex() {
        return "sysindex";
    }

    @RequestMapping("/sys/login")
    public String toLogin() {
        return "syslogin";
    }

    @RequestMapping("/sys/article")
    public String toArticle() {
        return "sysarticle";
    }

    @RequestMapping("/sys/user")
    public String toUser() {
        return "sysuser";
    }

    @ResponseBody
    @RequestMapping("/sys/check")
    public String check(@RequestBody User user, HttpServletRequest request){
        User dbuser = userService.authLogin(user.getLoginName(),user.getPassWord());
        if(dbuser!=null) {
            if(dbuser.getRole()==1) {
                request.getSession().setAttribute("sysuser",dbuser);
                request.getSession().setAttribute("sysusername",dbuser.getName());
                return "success";
            }
        }
        return "error";
    }
}
