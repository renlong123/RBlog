package com.rblog.service;

import com.rblog.bean.Article;
import com.rblog.bean.ArticleExample;

import java.util.List;

public interface ArticleService {

    public int saveArticleSelective(Article article);

    List<Article> selectAll();

    Article selectByPrimaryKey(Integer articleId);

    int updateByPrimaryKeySelectiveWithBlobs(Article record);

    int deleteByPrimaryKey(Integer articleId);

    int deleteBatch(List<Integer> ids);

    List<Article> selectByPage(Integer pageNumber,Integer countPerPage);

    List<Article> selectThree();

    int deleteByCategory(Integer categoryId);
}
