package com.mall.service.impl;

import com.mall.entity.Goods;
import com.mall.mapper.GoodsMapper;
import com.mall.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author 锋
 * @Create in 16:27 2020/8/10
 */
@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;
    @Override
    public List<Goods> selAllGoods() {  //查询
        List<Goods> goods = goodsMapper.selAllGods(new Goods());
        return goods;
    }

    @Override
    public Goods selGoodById(Goods good) {//根据gid查询
        List<Goods> goods = goodsMapper.selAllGods(good);
        return goods.get(0);
    }
}
