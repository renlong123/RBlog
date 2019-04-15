package com.rblog.controller;

import com.rblog.bean.Article;
import com.rblog.bean.User;
import com.rblog.bean.UserExample;
import com.rblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class TestController {

    @Autowired
    UserService userService;

/*
    @RequestMapping("/hello")
    public ModelAndView HelloDemo(){
        ModelAndView mav = new ModelAndView("index");
        List<User> list = userService.selectByExample(new UserExample());
        mav.addObject("list",list);
        return mav;
    }
*/


    @RequestMapping("/test")
    @ResponseBody
    public ModelAndView testueditor(){
        System.out.println("1111111111");
        ModelAndView mav = new ModelAndView();
        return mav;
    }

    @ResponseBody
    @RequestMapping(value="/action1",method = RequestMethod.POST)
    public ModelAndView testSubmit(Article article){
        //System.out.println("1kfnvfdsnfj");
        ModelAndView mav = new ModelAndView("welcome");

        Date now = new Date();
        article.setArticleCreatedate(now);
        article.setArticleLastmodify(now);
        article.setArticleUserid(1);
        System.out.println();
        List<Article> articles = new ArrayList<>();
        articles.add(article);
        mav.addObject("articles",articles);
        System.out.println(articles);

        return mav;
    }
}
