package com.mall.mapper;

import com.mall.entity.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @author 孟宇
 * @create 2020/8/10 - 15:22
 */
@Repository
public interface UserMapper {
    @Select("select * from user_ where uname = #{param1} and password = #{param2}")
    User login(String uname,String password);
}
