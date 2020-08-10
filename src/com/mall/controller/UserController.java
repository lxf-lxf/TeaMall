package com.mall.controller;

import com.mall.entity.User;
import com.mall.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author 孟宇
 * @create 2020/8/10 - 11:53
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    //用户登录
    @RequestMapping("/login")
    public String login(String uname, String password, HttpSession session, Model model){
        System.out.println(uname+"---"+password);
        User user = userService.login(uname, password);
        if(user != null){
            session.setAttribute("user",user);
            return "/index";
        }else {
            model.addAttribute("msg","账号或者密码错误!");
            return "/login";
        }
    }

    //退出登录
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "/index";
    }

    //注册用户
    @RequestMapping("/register")
    public String register(String uname,String password,String email){
        User user = new User();
        user.setUname(uname);
        user.setPassword(password);
        user.setEmail(email);
        int n  = userService.register(user);
        if(n == 1) {
            return "/login";
        }else{
            return "/register";
        }
    }
}
