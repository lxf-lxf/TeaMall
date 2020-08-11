package com.mall.controller;

import com.mall.entity.Goods;
import com.mall.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Author 锋
 * @Create in 16:24 2020/8/10
 */
@Controller
@RequestMapping(value = "/goods")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;
    @RequestMapping(value = "/SelAllGoods")
    @ResponseBody
    public String SelAllGoods(Model model){
        List<Goods> goods = goodsService.selAllGoods();
        model.addAttribute("goods",goods);
        System.out.println(goods.get(0).toString());
        if(goods!=null){
            return "/index";
        }else{
            return "查询商品失败";
        }
    }

    @RequestMapping(value = "/SelGoodById")
    public String SelGoodById(Model model){
        List<Goods> goods = goodsService.selAllGoods();
        model.addAttribute("goods",goods);
        System.out.println(goods.get(0).toString());
        if(goods!=null){
            return "/Product_Detailed";
        }else{
            return "查询商品失败";
        }
    }
}
