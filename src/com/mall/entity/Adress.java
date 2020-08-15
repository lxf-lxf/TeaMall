package com.mall.entity;

import java.io.Serializable;

public class Adress {
    private int aid;//地址ID
    private int uid;//用户ID
    private String adname;//联系人
    private String province;//省
    private String city;//市
    private String area;//县
    private String detadress;//详细地址
    private String phone;//联系方式
    private String postcode;//邮编；

    public Adress() {
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getAdname() {
        return adname;
    }

    public void setAdname(String adname) {
        this.adname = adname;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getDetadress() {
        return detadress;
    }

    public void setDetadress(String detadress) {
        this.detadress = detadress;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    @Override
    public String toString() {
        return "Adress{" +
                "aid=" + aid +
                ", uid=" + uid +
                ", adname='" + adname + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", area='" + area + '\'' +
                ", detadress='" + detadress + '\'' +
                ", phone='" + phone + '\'' +
                ", postcode='" + postcode + '\'' +
                '}';
    }
}
