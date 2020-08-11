package com.mall.mapper;

import com.mall.entity.Size;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author 锋
 * @Create in 17:02 2020/8/10
 */
@Repository
public interface SizeMapper {
    @Select(value = "select * from size where sid=#{param1}")
    public Size findAllSize(String sid);
}
