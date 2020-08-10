package com.mall.controller;

import com.mall.entity.User;
import com.mall.service.UserService;
import com.mall.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 孟宇
 * @create 2020/8/10 - 11:53
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;
    @RequestMapping("/login")
    public String login(String uname,String password){
        System.out.println(uname+"---"+password);
        User user = userService.login(uname, password);
        if(user != null){
            return "/index";
        }else {
            return "/login";
        }
    }
}
