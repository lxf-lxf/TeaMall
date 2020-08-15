package com.mall.mapper;

import com.mall.entity.BuyCar;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 孟宇
 * @create 2020/8/11 - 19:07
 */
@Repository
public interface BuyCarMapper {
    @Select("select sum(number) from buycar where uid = #{param1}")
    int selSumCar(int uid);

    //查询购物车表
    List<BuyCar> selCar(int uid);

    @Delete("delete from buycar where gid = #{gid}")
    int deleteCar(int gid);
}
