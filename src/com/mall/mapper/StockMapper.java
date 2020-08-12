package com.mall.mapper;

import com.mall.entity.Stock;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @Author 锋
 * @Create in 17:08 2020/8/10
 */
@Repository
public interface StockMapper {
    /**
     *
     * @param kid 库存编号
     * @return 返回查询到stock对象
     */
    @Select(value = "select * from stock where kid=#{param1}")
    public Stock findStock(int kid);
}
