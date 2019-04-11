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
import java.util.List;

@Controller
public class ArticleController {

    @Autowired
    ArticleService articleService;

    /**
     * 该方法用于保存发帖界面的内容至数据库
     * @param article，直接注入页面的article对象
     * @return
     */
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

    /**
     * 该方法用于从数据库中查询所有文章
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/article",method = RequestMethod.GET)
    public ModelAndView selectFromDatabase(){
        ModelAndView mav = new ModelAndView("articlesList");
        List<Article> articles = articleService.selectAll();
        mav.addObject("articles",articles);
        return mav;
    }

}
