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
import javax.servlet.http.HttpSession;
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

    /**
     * 根据用户ID获取用户信息
     * @param userId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/User/{userId}",method = RequestMethod.GET)
    public ModelAndView getUserById(@PathVariable("userId")Integer userId){
        ModelAndView mav = new ModelAndView("person_info");
        User user = userService.selectByPrimaryKey(userId);
        mav.addObject("user",user);
        /*System.out.println(user);*/
        return mav;
    }

    /**
     * 根据用户名字获取用户信息
     * @param username
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/UserName/{username}",method = RequestMethod.GET)
    public ModelAndView getUserByName(@PathVariable("username") String username){
        ModelAndView mav = new ModelAndView("person_info");
        List<User> user = userService.selectOneByExample(username);
        mav.addObject("user",user.isEmpty()?null:user.get(0));
        /*System.out.println(user);*/
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

    /*用户登陆判断，检测用户是否存在,密码是否正确*/
    @ResponseBody
    @RequestMapping(value = "/userLogin",method = RequestMethod.POST)
    public String userLoginCheck(String username, String password, HttpSession session) throws UnsupportedEncodingException {
        List<User> user = userService.selectOneByExample(username);
        if(user.isEmpty()){
            return "0";
        }else if(user.get(0).getUserPassword().equals(password)){
            session.setAttribute("username",username);
            session.setAttribute("password",password);
            session.setAttribute(username,password);
            return "2";
        }else{
            return "1";
        }
    }

    @ResponseBody
    @RequestMapping(value = "/userRegister/{username}",method = RequestMethod.GET)
    public String userRegister(@PathVariable("username")String username){
        long count = userService.countByExample(username);
        return Long.toString(count);
    }

    @RequestMapping(value = "/userLoginOut")
    public String userLoginOut(HttpSession session){
        session.removeAttribute((String) session.getAttribute("username"));
        session.removeAttribute("username");
        session.removeAttribute("password");
        return "redirect:welcome.jsp";
    }

}
