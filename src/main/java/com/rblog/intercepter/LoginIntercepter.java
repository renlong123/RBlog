package com.rblog.intercepter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginIntercepter implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String url = httpServletRequest.getRequestURI();
        System.out.println(url);
        if(url.indexOf("/userLogin")<0){
            HttpSession session = httpServletRequest.getSession();
            String username = (String)session.getAttribute("username");
            String password = (String)session.getAttribute("password");
            boolean match = false;
            if(username!=null) {
                match = session.getAttribute(username).equals(password);
            }
            System.out.println(username+":"+password);
            if(username!=null&&password!=null&&match){
                System.out.println("+++++++++++++++++++++++++++++++++++");
                return true;
            }else{
                System.out.println("djsfh________________++++++++++++++++++++++");
                httpServletRequest.getRequestDispatcher("/userLogin")
                        .forward(httpServletRequest,httpServletResponse);
                return false;
            }
        }else{
            System.out.println("---------------------------------------");
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
