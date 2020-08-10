package com.mall.service;

import com.mall.entity.User;

/**
 * @author 孟宇
 * @create 2020/8/10 - 15:23
 */
public interface UserService {
   //用户登录
    User login(String uname,String password);
    //用户注册
    int register(User user);
}
