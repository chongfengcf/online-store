package com.oldstore.dao;

import com.oldstore.model.Article;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface ArticleDAO {

    int insert(Article record);

    int update(Article record);

    int delete(Integer id);

    Article queryById(Integer id);

    List<Article> queryAll();
}