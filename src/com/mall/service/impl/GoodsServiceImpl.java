package com.mall.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mall.entity.Goods;
import com.mall.mapper.GoodsMapper;
import com.mall.service.GoodsService;
import com.mall.util.Resultset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author 锋
 * @Create in 16:27 2020/8/10
 */
@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;
    @Override
    public List<Goods> selAllGoods() {  //查询
        List<Goods> goods = goodsMapper.selAllGods(new Goods());
        return goods;
    }

    @Override
    public Goods selGoodById(Goods good) {//根据gid查询
        List<Goods> goods = goodsMapper.selAllGods(good);
        return goods.get(0);
    }

    @Override
    public Resultset selGoodByType(Integer pageNum, Integer pageSize,Goods good) {//根据type查询
        PageHelper.startPage(pageNum,pageSize);
        List<Goods> goods = goodsMapper.selAllGods(good);
        PageInfo<Goods> pageInfo = new PageInfo<>(goods);
        //封装了查询分页的相关信息的类
        long total = pageInfo.getTotal();//数据的总数
        Long l =  total / pageSize;
        int num = pageInfo.getPageNum(); //显示的页数
        System.out.println("数据的总数"+total+"显示的页数"+num+"   size"+l);
        Resultset resultset = new Resultset();
        resultset.setGoods(goods);
        resultset.setPagesize(num);
        resultset.setTotal(l+1);
        return resultset;
    }


}
