package com.mall.controller;

import com.mall.entity.Goods;
import com.mall.entity.User;
import com.mall.service.GoodsService;
import com.mall.service.UserService;
import com.mall.util.PhoneNumFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @author 孟宇
 * @create 2020/8/10 - 11:53
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    private GoodsService goodsService;
    //用户登录
    @RequestMapping("/login")
    public String login(String uname, String password, HttpSession session, Model model){
        System.out.println(uname+"---"+password);
        User user = userService.login(uname, password);
        List<Goods> goods = goodsService.selAllGoods();
        System.out.println(goods.get(0).toString());
        if(user != null && goods!=null){
            model.addAttribute("goods",goods);
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
        int  n = userService.register(user);
        if(n == 1) {
            return "/login";
        }else{
            return "/register";
        }
    }

    User user;
    String code;//验证码
    //校验手机号是否在数据库存在
    @RequestMapping("/phoneRegister")
    @ResponseBody
    public String selPhone(String phone) throws IOException {
        user = userService.selPhone(phone);
        //发送验证码的类
        PhoneNumFactory num = new PhoneNumFactory();
        if(user!=null){
            return "1";
        }else{//代表号码不存在数据库
            code = num.sendMsg(phone);
            return "0";
        }
    }

    //快速注册
    @RequestMapping("/quickRegister")
    public String quickRegister(String phone,String checkCode,Model model){
        User u = null;
        if(code.equals(checkCode)){//校验发送的验证码是否与得到的验证码一致
            u= new User();
            u.setRealname("张三");
            u.setPassword("000000");
            u.setPhone(phone);
        }
        int n = userService.register(user);
        if(n == 1) {
            model.addAttribute("user",u);
            return "redirect:/index";
        }else{
            return "/register";
        }
    }
}
