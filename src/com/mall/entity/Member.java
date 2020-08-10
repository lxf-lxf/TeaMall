package com.mall.entity;

import java.io.Serializable;

/**
 * @author 孟宇
 * @create 2020/8/10 - 20:19
 */
public class Member implements Serializable {
    private int mid;//会员id
    private int uid;//用户id
    private int level;//会员等级
    private int i_number;//积分数量
    private Interal interal;//积分表

    public Member() {
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getI_number() {
        return i_number;
    }

    public void setI_number(int i_number) {
        this.i_number = i_number;
    }

    public Interal getInteral() {
        return interal;
    }

    public void setInteral(Interal interal) {
        this.interal = interal;
    }

    @Override
    public String toString() {
        return "Member{" +
                "mid=" + mid +
                ", uid=" + uid +
                ", level=" + level +
                ", i_number=" + i_number +
                ", interal=" + interal +
                '}';
    }
}
