package com.mall.service;

import com.mall.entity.Stock;

/**
 * @Author 锋
 * @Create in 17:05 2020/8/10
 */
public interface StockService {
    //查询所有物品的库存数量
    public Stock findStock(int sid);
}
