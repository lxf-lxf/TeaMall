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
    public List<Goods> selAllGods();
}
