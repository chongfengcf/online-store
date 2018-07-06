package com.oldstore.controller;

import com.oldstore.model.User;
import com.oldstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller
public class SysUserController {
    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping("/sys/user/queryall")
    public List<User> returnAll() {
        return userService.queryAll();
    }

    @RequestMapping("/sys/user/detail/{id}")
    public String detail(@PathVariable("id")Integer id, Model model) {
        User user = userService.queryById(id);
        model.addAttribute("item", user);
        return "sysedituser";
    }

    @RequestMapping("/sys/user/update")
    public String update(User user) {
        userService.update(user);
        return "redirect:/sys/user";
    }

    @RequestMapping("/sys/user/del/{id}")
    public String update(@PathVariable("id")Integer id) {
        userService.delete(id);
        return "redirect:/sys/user";
    }

    @RequestMapping("/sys/user/toadd")
    public String toAdd() {
        return "sysadduser";
    }



    @RequestMapping("/sys/user/add")
    public String save(User user) {
        user.setCreateDate(new Date());
        userService.insert(user);
        return "redirect:/sys/user";
    }
}
