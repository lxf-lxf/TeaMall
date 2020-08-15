package com.mall.controller;

import com.mall.entity.BuyCar;
import com.mall.entity.Goods;
import com.mall.entity.User;
import com.mall.service.BuyCarService;
import com.mall.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author 孟宇
 * @create 2020/8/11 - 18:32
 */
@Controller
@RequestMapping("/buycar")
public class BuyCarController {
    @Autowired
    BuyCarService buyCarService;
    @Autowired
    GoodsService goodsService;
    //购物车商品总数量
    @RequestMapping("/carNum")
    @ResponseBody
    public String carNum(HttpSession session){
        User user = (User)session.getAttribute("user");
//        int num = buyCarService.selSumCar(user.getUid());
        int num = buyCarService.selSumCar(2);
        return num+"";
    }

    @RequestMapping("/selGoods")
    public String selGoods(HttpSession session, Model model, HttpServletRequest req){
        User user = (User)session.getAttribute("user");
        //通过uid查询购物车
        List<BuyCar> list = buyCarService.selCar(user.getUid());
        if(list != null) {
            List<Goods> goods = null;
            for (BuyCar car : list){
                goods = car.getGoods();
            }
//            model.addAttribute("goods", goodsList);
            req.setAttribute("goods",goods);
//            model.addAttribute("buyCar", buyCar);
            req.setAttribute("buyCar",list);
        }
        List<Goods> allGoods = goodsService.selAllGoods();
        model.addAttribute("allGoods",allGoods);
        return "/shopping_cart";
    }

    //删除购物车中的商品
    @RequestMapping("/deleteCar/{gid}")
    public String deleteCar(@PathVariable int gid){
        int n = buyCarService.deleteCar(gid);
        if(n == 1) {
            return "/shopping_cart";
        }else{
            return "/index";
        }
    }
}
