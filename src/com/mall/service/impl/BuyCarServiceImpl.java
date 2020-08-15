package com.mall.service.impl;

import com.mall.entity.BuyCar;
import com.mall.entity.Goods;
import com.mall.mapper.BuyCarMapper;
import com.mall.mapper.GoodsMapper;
import com.mall.service.BuyCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 孟宇
 * @create 2020/8/11 - 19:13
 */
@Service
public class BuyCarServiceImpl implements BuyCarService {
    @Autowired
    BuyCarMapper buyCarMapper;
    @Autowired
    GoodsMapper goodsMapper;
    @Override
    public int selSumCar(int uid) {
        return buyCarMapper.selSumCar(uid);
    }

    @Override
    public List<BuyCar> selCar(int uid) {
        return buyCarMapper.selCar(uid);
    }

    @Override
    public List<Goods> selGoods(Goods goods) {
        return goodsMapper.selAllGods(goods);
    }

    @Override
    public int deleteCar(int gid) {
        return buyCarMapper.deleteCar(gid);
    }
}
