package com.mall.service.impl;

import com.mall.entity.User;
import com.mall.mapper.UserMapper;
import com.mall.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * @author 孟宇
 * @create 2020/8/10 - 15:23
 */
@Controller
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;
    @Override
    public User login(String uname, String password) {
        return userMapper.login(uname,password);
    }
}
