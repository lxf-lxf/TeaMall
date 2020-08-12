package com.mall.entity;

import java.io.Serializable;

/**
 * @Author 锋
 * @Create in 15:53 2020/8/10
 */
public class Goods implements Serializable {
    private int gid;
    private String gname;
    private String photo;
    private String descr;
    private int sid;
    private String type;

    private Size size;
    public Goods() {
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Goods(int gid, String gname, String photo, String descr, int sid, Size size) {
        this.gid = gid;
        this.gname = gname;
        this.photo = photo;
        this.descr = descr;
        this.sid = sid;
        this.size = size;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "gid=" + gid +
                ", gname='" + gname + '\'' +
                ", photo='" + photo + '\'' +
                ", descr='" + descr + '\'' +
                ", sid=" + sid +
                ", type='" + type + '\'' +
                ", size=" + size +
                '}';
    }
}
