package com.oldstore.controller;

import com.oldstore.model.Article;
import com.oldstore.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
