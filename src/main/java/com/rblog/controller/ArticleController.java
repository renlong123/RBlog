package com.rblog.controller;

import com.rblog.bean.Article;
import com.rblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;

@Controller
public class ArticleController {

    @Autowired
    ArticleService articleService;

    @ResponseBody
    @RequestMapping(value = "/article",method = RequestMethod.POST)
    public String saveArticle(Article article){
        Date now = new Date();
        article.setArticleCreatedate(now);
        article.setArticleLastmodify(now);
        article.setArticleUserid(1);
        int result = articleService.saveArticleSelective(article);
        return result==1?"success":"fail";
    }

}
