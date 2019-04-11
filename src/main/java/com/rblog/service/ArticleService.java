package com.rblog.service;

import com.rblog.bean.Article;
import com.rblog.bean.ArticleExample;

import java.util.List;

public interface ArticleService {

    public int saveArticleSelective(Article article);

    List<Article> selectAll();
}
