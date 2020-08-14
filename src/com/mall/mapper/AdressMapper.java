package com.mall.mapper;

import com.mall.entity.Adress;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdressMapper {

    //查询地址列表
    @Select("select * from madress where uid = #{param1}")
    public List<Adress> selAllByuid(int uid);

    //添加地址
    @Insert("insert into madress values(null,#{uid},#{province},#{city},#{area},#{detadress},#{phone},#{postcode},#{adname})")
    public int addAdress(Adress adress);

    //查询修改地址信息
    @Select("select * from madress where aid=#{param1}")
    public Adress selUpdateAdress(int aid);

    //修改地址
    @Update("update madress set adname=#{adname},province=#{province},city=#{city},area=#{area},detadress=#{detadress},phone=#{phone},postcode=#{postcode} where aid=#{aid}")
    public int UpdateAdress(Adress adress);

    //根据aid删除地址
    @Delete("delete from madress where aid=#{param1}")
    public int delAdress(int aid);
}
