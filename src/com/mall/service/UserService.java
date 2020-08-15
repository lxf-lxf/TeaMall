package com.mall.service;

import com.mall.entity.User;

import java.io.IOException;

/**
 * @author 孟宇
 * @create 2020/8/10 - 15:23
 */
public interface UserService {
   //用户登录
    User login(String uname,String password);
    //用户注册
    int register(User user);

    User selPhone(String phone) throws IOException;

    int updatePwd(int uid,String password);
}
