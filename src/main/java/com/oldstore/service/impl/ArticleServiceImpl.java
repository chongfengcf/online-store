package com.oldstore.service.impl;

import com.oldstore.dao.ArticleDAO;
import com.oldstore.model.Article;
import com.oldstore.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleDAO articledao;

    @Override
    public int insert(Article record) {
        return articledao.insert(record);
    }

    @Override
    public int update(Article record) {
        return articledao.update(record);
    }

    @Override
    public int delete(Integer id) {
        return articledao.delete(id);
    }

    @Override
    public Article queryById(Integer id) {
        return articledao.queryById(id);
    }

    @Override
    public List<Article> queryAll() {
        return articledao.queryAll();
    }
}
