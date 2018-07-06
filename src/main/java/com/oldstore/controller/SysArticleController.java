package com.oldstore.controller;

import com.oldstore.model.Article;
import com.oldstore.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
    public String ArticleDetail(@PathVariable("id")Integer id, Model model) {
        Article article = articleService.queryById(id);
        model.addAttribute("item", article);
        return "syseditarticle";
    }

    @RequestMapping("/sys/art/update")
    public String update(Article article) {
        articleService.update(article);
        return "redirect:/sys/article";
    }

    @RequestMapping("/sys/art/del/{id}")
    public String update(@PathVariable("id")Integer id) {
        articleService.delete(id);
        return "redirect:/sys/article";
    }

    @RequestMapping("/sys/art/toadd")
    public String toAdd() {
        return "sysaddarticle";
    }

    @ResponseBody
    @RequestMapping("/sys/art/image")
    public String saveImg(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        String res = null;
        if(!file.isEmpty()) {
            String dirPath = request.getServletContext().getRealPath("/upload/");
            File filePath = new File(dirPath);
            if (!filePath.exists()) {
                filePath.mkdirs();
            }
            String fileName = file.getOriginalFilename();
            String suffix = fileName.substring(fileName.lastIndexOf(".")+1);
            String newFilename = UUID.randomUUID() + "." + suffix;
            res = newFilename;
            try {
                file.transferTo(new File(dirPath+newFilename));
            } catch (IOException e) {
                e.printStackTrace();
                return "error";
            }
        } else {
            return "error";
        }
        return res;
    }

    @RequestMapping("/sys/art/add")
    public String save(Article article) {
        article.setCreateDate(new Date());
        articleService.insert(article);
        return "redirect:/sys/article";
    }
}
