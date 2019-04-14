package com.rblog.controller;

import com.rblog.bean.Category;
import com.rblog.service.CategoryService;
import org.junit.jupiter.api.extension.RegisterExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class CategoryController {

    @Autowired
    CategoryService categoryService;


    @RequestMapping(value = "/category",method = RequestMethod.GET)
    @ResponseBody
    public List<Category> selectAll(){
        List<Category> list = categoryService.selectAll();
        return list;
    }

    @RequestMapping(value = "/categoryjump",method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView selectAllJump(){
        ModelAndView mav = new ModelAndView("categoryList");
        List<Category> list = categoryService.selectAll();
        mav.addObject("categories",list);
        return mav;
    }

    @ResponseBody
    @RequestMapping(value = "/forcheck",method = RequestMethod.GET)
    public int hasThisCategory(String categoryName){
        System.out.println(categoryName);
        int result = categoryService.selectCount(categoryName.trim());
        System.out.println(result);
        return result;
    }

    @ResponseBody
    @RequestMapping(value = "/category",method = RequestMethod.POST)
    public int saveCategory(Category category){
        int result = categoryService.insert(category);
        return result;
    }

    @ResponseBody
    @RequestMapping(value = "/category/{categoryId}",method = RequestMethod.DELETE)
    public int deleteCategories(@PathVariable("categoryId") String ids){
        int result = 0;
        System.out.println(ids);
        if(ids.contains("-")){
            String[] idss = ids.split("-");
            List<Integer> list = new ArrayList<>();
            for(String i:idss){
                list.add(Integer.parseInt(i));
            }
            result = categoryService.deleteByExample(list);
        }else{
            result = categoryService.deleteByPrimaryKey(Integer.parseInt(ids));
        }
        return result;
    }
}
