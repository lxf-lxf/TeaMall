package com.mall.service.impl;

import com.mall.entity.User;
import com.mall.mapper.UserMapper;
import com.mall.service.UserService;
import com.mall.util.PhoneNumFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.io.IOException;

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

    @Override
    public User selPhone(String phone){
        return userMapper.selPhone(phone);
    }
}
