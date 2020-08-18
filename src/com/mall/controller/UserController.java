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
        System.out.println(phone);
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

    //ymf-8.15
    //查询个人信息
    @RequestMapping(value = "/ShowUserInfo",produces = "text/html;charset=utf-8")
    public String ShowUserInfo(HttpSession session,Model model){
        User user = (User) session.getAttribute("user");
        int uid = user.getUid();
        User user1 = userService.ShowUserInfo(uid);
        model.addAttribute("user",user1);
        return "/user_info";
    }

    //修改个人信息
    @RequestMapping(value = "/UpdateUser",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String UpdateUser(int uid,String uname,String realname,String sex,String phone,String email){
        User user = new User();
        user.setUid(uid);
        user.setUname(uname);
        user.setRealname(realname);
        user.setSex(sex.charAt(0));
        user.setPhone(phone);
        user.setEmail(email);
        int i = userService.UpdateUser(user);
        return Integer.toString(i);
    }
    //
    //校验手机号是否注册不发送验证码
    @RequestMapping("/phoneIsExist")
    @ResponseBody
    public String phoneIsExist(String phone) throws IOException {
        user = userService.selPhone(phone);
        if(user!=null){
            return "1";
        }else{
            return "0";
        }
    }
    //忘记密码发送验证码
    @RequestMapping(value = "/sendCode",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String sendCode(String phone) throws IOException {
        PhoneNumFactory phoneNumFactory = new PhoneNumFactory();
        code = phoneNumFactory.numFactory();
        System.out.println("code:"+code);
        return code;
    }
    //忘记密码设置密码
    @RequestMapping(value = "/resetPwd",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String resetPwd(String phone){
        PhoneNumFactory phoneNumFactory = new PhoneNumFactory();
        String password=phoneNumFactory.generatePassword(6);//生出随机6位数密码
        System.out.println("pwd:"+password);
        int i = userService.reserPwd(phone, password);
        System.out.println(i);
        if (i==1){
            return password;
        }else{
            return "0";
        }
    }
}
