package com.mall.service;

import com.mall.entity.BuyCar;
import com.mall.entity.Goods;

import java.util.List;

/**
 * @author 孟宇
 * @create 2020/8/11 - 19:12
 */
public interface BuyCarService {
    //查购物车中商品数量
    int selSumCar(int uid);
    //查询购物车中的商品
    List<BuyCar> selCar(int uid);
    //通过id查询size
    List<Goods> selGoods(Goods goods);
    //通过id删除购物车中的商品
    int deleteCar(int gid);
}
