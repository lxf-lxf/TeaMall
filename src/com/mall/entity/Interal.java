package com.mall.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 * @author 孟宇
 * @create 2020/8/10 - 20:24
 */
public class Interal implements Serializable {
    private int i_id;//积分编号
    private int mid;//会员编号
    private String i_record;//积分记录
    private Date time;//时间

    public Interal() {
    }

    public int getI_id() {
        return i_id;
    }

    public void setI_id(int i_id) {
        this.i_id = i_id;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getI_record() {
        return i_record;
    }

    public void setI_record(String i_record) {
        this.i_record = i_record;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Interal{" +
                "i_id=" + i_id +
                ", mid=" + mid +
                ", i_record='" + i_record + '\'' +
                ", time=" + time +
                '}';
    }
}
