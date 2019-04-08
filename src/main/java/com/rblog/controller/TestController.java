package com.rblog.controller;

import com.rblog.bean.User;
import com.rblog.bean.UserExample;
import com.rblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class TestController {

    @Autowired
    UserService userService;

    @RequestMapping("/hello")
    public ModelAndView HelloDemo(){
        ModelAndView mav = new ModelAndView("index");
        List<User> list = userService.selectByExample(new UserExample());
        mav.addObject("list",list);
        return mav;
    }

    @RequestMapping("/person")
    public ModelAndView person(){
        ModelAndView mav = new ModelAndView("person_info");
        return mav;
    }
}
