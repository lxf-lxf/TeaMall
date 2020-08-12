package com.mall.controller;

import com.mall.entity.Goods;
import com.mall.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
    public String SelAllGoods(Model model){//查询所有商品的对象
        List<Goods> goods = goodsService.selAllGoods();
        if(goods!=null){
            if(goods!=null){
                model.addAttribute("goods",goods);
            }
            return "/index";
        }else{
            return "查询商品失败";
        }
    }

    @RequestMapping(value = "/SelGoodById/{gid}",produces = "text/html;charset=utf-8")
    public String SelGoodById(@PathVariable int gid,Model model){//根据商品ID查询商品所有信息
        Goods g= new Goods();
        g.setGid(gid);
        Goods g2 = goodsService.selGoodById(g);
        System.out.println(g2);
        model.addAttribute("Good",g2);
        if(g2!=null){
            return "/Product_Detailed";
        }else{
            return "查询商品失败";
        }
    }
}
