package com.mall.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mall.entity.Adress;
import com.mall.mapper.AdressMapper;
import com.mall.service.AdressService;
import com.mall.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdressServiceImpl implements AdressService {
    @Autowired
    private AdressMapper adressMapper;

    //通过页码查询地址列表
    @Override
    public Result selByPageNum(int uid,Integer pageNum, Integer pageSize) {
        Adress adress=new Adress();
        PageHelper.startPage(pageNum, pageSize);
        List<Adress> AdressList = adressMapper.selAllByuid(uid);
        //封装了查询分页的相关信息类
        PageInfo<Adress> adressPageInfo = new PageInfo<>(AdressList);
        long total = adressPageInfo.getTotal();//数据总数
        int Num = adressPageInfo.getPageNum();//每页r显示的数据条数
        //自定义一个工具类封装分页的数据信息
        Result r = new Result();
        r.setAdressList(AdressList);
        r.setTotal(total);
        r.setPageNum(pageNum);
        return r;
    }
    //添加地址
    public int addAdress(Adress adress){
        int i = adressMapper.addAdress(adress);
        return i;
    }

    //根据aid删除地址
    @Override
    public int delAdress(int aid) {
        return adressMapper.delAdress(aid);
    }
    //查询修改地址
    @Override
    public Adress selUpdateAdress(int aid) {
        return adressMapper.selUpdateAdress(aid);
    }
    //修改地址
    @Override
    public int UpdateAdress(Adress adress) {
        return adressMapper.UpdateAdress(adress);
    }
}
