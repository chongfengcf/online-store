package com.oldstore.controller;

import com.oldstore.model.Article;
import com.oldstore.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
public class SysArticleController {
    @Autowired
    private ArticleService articleService;

    @ResponseBody
    @RequestMapping("/sys/art/queryall")
    public List<Article> returnAllArticle() {
        return articleService.queryAll();
    }

    @RequestMapping("/sys/art/detail/{id}")
    public String ArticleDetail(@PathVariable("id")Integer id) {
        System.out.println(id);
        return null;
    }

    @RequestMapping("/sys/art/toadd")
    public String toAdd() {
        return "sysaddarticle";
    }

    @ResponseBody
    @RequestMapping("/sys/art/image")
    public String saveImg( @RequestParam("file") MultipartFile file) {
        System.out.println(file);
        return "success";
    }

    @ResponseBody
    @RequestMapping("/sys/art/add")
    public String save(Article article) {
        System.out.println(article);
        return null;
    }
}
