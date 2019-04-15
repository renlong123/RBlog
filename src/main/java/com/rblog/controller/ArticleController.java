package com.rblog.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rblog.bean.Article;
import com.rblog.service.ArticleService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@Controller
public class ArticleController {

    @Autowired
    ArticleService articleService;

    /*仅用作视图跳转*/
    @ResponseBody
    @RequestMapping("/articleNew")
    public ModelAndView dss(){
        ModelAndView mav = new ModelAndView("articleNew");
        return mav;
    }

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
        /*String subString = article.getArticleContent().substring(0,100).replaceAll("<","").trim();
        article.setarticleSubContent(subString);*/
        int result = articleService.saveArticleSelective(article);
        return result==1?"success":"fail";
    }

    /**
     * 该方法用于从数据库中查询所有文章
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/article",method = RequestMethod.GET)
    public ModelAndView selectFromDatabase(@RequestParam(defaultValue = "1",value = "pageNumber")Integer pageNumber){
        ModelAndView mav = new ModelAndView("articlesList");
        PageHelper.startPage(pageNumber,5);
        List<Article> list = articleService.selectAll();
        PageInfo page = new PageInfo(list,5);
        mav.addObject("pageInfo",page);

        return mav;
    }

    @ResponseBody
    @RequestMapping(value = "/selectThree",method = RequestMethod.GET)
    public List<Article> selectThree(){
        List<Article> list = new ArrayList<>();
        list = articleService.selectThree();
        return list;
    }

    @ResponseBody
    @RequestMapping(value = "/oneArticle/{articleId}",method = RequestMethod.GET)
    public ModelAndView selectOneSelect(@PathVariable("articleId") Integer articleId){
        ModelAndView mav = new ModelAndView("articleDisplay");
        Article article = articleService.selectByPrimaryKey(articleId);
        mav.addObject("article",article);
        return mav;
    }

    @ResponseBody
    @RequestMapping(value = "/editArticle/{articleId}",method = RequestMethod.GET)
    public ModelAndView selectOneEdit(@PathVariable("articleId")Integer articleId){
        ModelAndView mav = new ModelAndView("articleEdit");
        Article article = articleService.selectByPrimaryKey(articleId);
        mav.addObject("article",article);
        return mav;
    }

    @ResponseBody
    @RequestMapping(value = "/oneArticle/{articleId}",method = RequestMethod.PUT)
    public String updateById(@PathVariable("articleId")Integer articleId,Article article){
        article.setArticleLastmodify(new Date());
/*        String subString = article.getArticleContent().substring(0,100).replaceAll("<","").trim();
        article.setarticleSubContent(subString);*/
        article.setArticleId(articleId);
       /* System.out.println(article.toString());*/
        return articleService.updateByPrimaryKeySelectiveWithBlobs(article)!=0?"success":"fail";
    }

    /**
     * 通过Id删除，controller层
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/oneArticle/{articleId}",method = RequestMethod.DELETE)
    public String deleteById(@PathVariable("articleId")String ids){
        int result = 0;
        if(ids.contains("-")){
            List<Integer> lists = new ArrayList<>();
            String[] strings = ids.split("-");
            for(String id:strings){
                lists.add(Integer.parseInt(id));
            }
            result = articleService.deleteBatch(lists);
        }else{
             result = articleService.deleteByPrimaryKey(Integer.parseInt(ids));
        }
        return result!=0?"success":"fail";
    }

    @RequestMapping(value = "/newArticle")
    public void newArticle(){
        ModelAndView mav = new ModelAndView("articleNew");
    }

}
