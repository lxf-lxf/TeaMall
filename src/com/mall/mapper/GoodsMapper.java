package com.mall.mapper;

import com.mall.entity.Goods;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author 锋
 * @Create in 16:29 2020/8/10
 */
@Repository
public interface GoodsMapper {
    //查询所有商品,也可以根据商品id进行单独查询
    public List<Goods> selAllGods(Goods goods);
}
