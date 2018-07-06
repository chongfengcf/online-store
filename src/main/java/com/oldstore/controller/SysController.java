package com.oldstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SysController {

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
}
