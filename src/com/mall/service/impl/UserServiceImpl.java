package com.mall.service.impl;

import com.mall.entity.User;
import com.mall.mapper.UserMapper;
import com.mall.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

/**
 * @author 孟宇
 * @create 2020/8/10 - 15:23
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    //用户登录
    @Override
    public User login(String uname, String password) {
        return userMapper.login(uname,password);
    }

    //用户注册
    @Override
    public int register(User user) {
        return userMapper.register(user);
    }
}
