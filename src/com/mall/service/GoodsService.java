package com.mall.service;

import com.mall.entity.Goods;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author 锋
 * @Create in 16:26 2020/8/10
 */
@Service
public interface GoodsService {
    public List<Goods> selAllGoods();
}
