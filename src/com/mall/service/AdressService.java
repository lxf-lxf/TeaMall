package com.mall.service;

import com.mall.entity.Adress;
import com.mall.util.Result;

import java.util.List;

public interface AdressService {


    //通过页码查询地址列表
    public Result selByPageNum(int uid,Integer pageNum, Integer pageSize);
    //添加地址
    public int addAdress(Adress adress);
    //查询修改地址
    public Adress selUpdateAdress(int aid);
    //修改地址
    public int UpdateAdress(Adress adress);
    //根据aid删除地址
    public int delAdress(int aid);

}
