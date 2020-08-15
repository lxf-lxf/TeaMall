package com.mall.entity;

import java.io.Serializable;
import java.util.List;

/**
 * @author 孟宇
 * @create 2020/8/11 - 16:37
 */
public class BuyCar implements Serializable {
    private int bid;//购物车编号
    private int uid;//用户编号
    private int gid;//商品编号
    private int number;//数量

    private List<Goods> goods;
    private User user;

    public BuyCar() {
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public List<Goods> getGoods() {
        return goods;
    }

    public void setGoods(List<Goods> goods) {
        this.goods = goods;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "BuyCar{" +
                "bid=" + bid +
                ", uid=" + uid +
                ", gid=" + gid +
                ", number=" + number +
                ", goods=" + goods +
                ", user=" + user +
                '}';
    }
}
