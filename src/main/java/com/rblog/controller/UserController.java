package com.rblog.controller;

import com.rblog.bean.User;
import com.rblog.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserService userService;


    @RequestMapping("/person")
    public ModelAndView person(){
        ModelAndView mav = new ModelAndView("person_info");
        return mav;
    }

    @ResponseBody
    @RequestMapping(value = "/User/{userId}",method = RequestMethod.GET)
    public ModelAndView getUserById(@PathVariable("userId")Integer userId){
        ModelAndView mav = new ModelAndView("person_info");
        User user = userService.selectByPrimaryKey(userId);
        mav.addObject("user",user);
        System.out.println(user);
        return mav;
    }

    @RequestMapping(value = "/userLogin",method = RequestMethod.GET)
    public String jumpToLoginPage(){
        return "userLogin";
    }

    @RequestMapping("/userRegister")
    public String jumpToRegisterPage(){
        return "userRegister";
    }

    @ResponseBody
    @RequestMapping(value = "/userLogin",method = RequestMethod.POST)
    public String userLoginCheck(String username,String password) throws UnsupportedEncodingException {
        List<User> user = userService.selectOneByExample(username);
        if(user==null){
            return "0";
        }else if(user.get(0).getUserPassword().equals(password)){
            String cookiename = URLEncoder.encode(username,"UTF-8");
            Cookie cookie = new Cookie("username",cookiename);
            cookie.setPath("/");
            cookie.setMaxAge(24*60*60*7);

            return "2";
        }else{
            return "1";
        }

    }

}
