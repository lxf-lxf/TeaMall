package com.mall.service;

import com.mall.entity.Goods;
import com.mall.util.Resultset;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author 锋
 * @Create in 16:26 2020/8/10
 */
@Service
public interface GoodsService {
    //查询所有的商品
    public List<Goods> selAllGoods();
    //根据商品的id，查找商品。goods对象里面封装了id
    public Goods selGoodById(Goods goods);
    //根据商品的类别，查找商品。goods对象里面封装了type
    public Resultset selGoodByType(Integer pageNum, Integer pageSize, Goods goods);
}
