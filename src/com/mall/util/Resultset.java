package com.mall.util;

import com.mall.entity.Goods;

import java.util.List;

/**
 * @Author 锋
 * @Create in 14:36 2020/8/12
 */
public class Resultset {
    private List<Goods> goods;
    private Long total;
    private int pagesize;

    public Resultset() {
    }

    public Resultset(List<Goods> goods, Long total, int pagesize) {
        this.goods = goods;
        this.total = total;
        this.pagesize = pagesize;
    }

    public List<Goods> getGoods() {
        return goods;
    }

    public void setGoods(List<Goods> goods) {
        this.goods = goods;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    @Override
    public String toString() {
        return "Resultset{" +
                "goods=" + goods +
                ", total=" + total +
                ", pagesize=" + pagesize +
                '}';
    }
}
