package com.mall.mapper;

import com.mall.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @author 孟宇
 * @create 2020/8/10 - 15:22
 */
@Repository
public interface UserMapper {
    /**
     * 用户登录
     * @param uname 账户
     * @param password 密码
     * @return 封装user
     */
    @Select("select * from user_ where uname = #{param1} and password = #{param2}")
    User login(String uname,String password);

    //用户注册
    @Insert("insert into user_(uname,password,email,mid) values(#{uname},#{password},#{email},'1')")
    int register(User user);

    //查询电话号码
    @Select("select * from user_ where phone = #{param1}")
    User selPhone(String phone);
}
