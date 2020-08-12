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
    /**
     * @param sid 参数编号
     * @return 返回size对象
     */
    @Select(value = "select * from size where sid=#{param1}")
    public Size findAllSize(int sid);

    /**
     *
     * @param sid 参数编号
     * @return 根据id查询返回size对象
     */
    public Size findsizeByid(int sid);
}
