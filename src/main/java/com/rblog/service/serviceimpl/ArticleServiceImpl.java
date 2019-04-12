package com.rblog.service.serviceimpl;

import com.rblog.bean.Article;
import com.rblog.bean.ArticleExample;
import com.rblog.dao.ArticleMapper;
import com.rblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    ArticleMapper articleMapper;

    public int saveArticleSelective(Article article){
        int result = articleMapper.insertSelective(article);
        return result;
    }

    @Override
    public List<Article> selectAll() {
        ArticleExample example = new ArticleExample();
        return articleMapper.selectByExample(example);
    }

    @Override
    public Article selectByPrimaryKey(Integer articleId) {
        return articleMapper.selectByPrimaryKey(articleId);
    }

}
