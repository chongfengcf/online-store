package com.oldstore.service;

import com.oldstore.model.Article;

import java.util.List;

public interface ArticleService {
    int insert(Article record);

    int update(Article record);

    int delete(Integer id);

    Article queryById(Integer id);

    List<Article> queryAll();
}
