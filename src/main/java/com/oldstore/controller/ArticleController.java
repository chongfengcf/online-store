package com.oldstore.controller;

import com.oldstore.model.Article;
import com.oldstore.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping("/")
    public String toIndex() {
        return "redirect:/front/index";
    }
    @RequestMapping("/front/index")
    public String queryAllArticle(Model model){

        List<Article> articles = articleService.queryAll();
        model.addAttribute("list",articles);
        return "index";
    }

    @RequestMapping("/front/queryByName")
    public String queryByName(String article_name,Model model){
        List<Article> articles = articleService.queryByName(article_name);

        if(articles.size() == 0)
        {
            model.addAttribute("msg","您太潮了，暂时没有您需要的商品");
        }else {

            model.addAttribute("list",articles);
        }

        return "queryByName";
    }

    @RequestMapping("/front/findByID")
    public  String findById(Integer id,Model model)
    {
        Article article = articleService.queryById(id);
        model.addAttribute(article);
        return "details";
    }

    @RequestMapping("/front/findByType")
    public String findByType(String type, Model model) {
        List<Article> articles = articleService.queryByTypeName(type);
        model.addAttribute("list",articles);
        return "index";
    }
}
