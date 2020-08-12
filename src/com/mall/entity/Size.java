package com.mall.entity;

import java.sql.Date;

/**
 * @Author 锋
 * @Create in 15:57 2020/8/10
 */
// sid                  int not null auto_increment,
//   specs                varchar(15),
//   weight               varchar(15),
//   marketprice          double,
//   price                double,
//   gid                  int,
//   primary key (sid)
public class Size {
    private int sid;
    private String specs;
    private String weight;
    private double marketPrice;
    private double price;
    private int kid;
    private Stock stock;
    private String pcode;
    private String pstand;
    private Date pdate;
    private String brand;
    private String level;
    private String paddress;

    public Size(int sid, String specs, String weight, double marketPrice, double price, int kid, Stock stock, String pcode, String pstand, Date pdate, String brand, String level, String paddress, String baozi) {
        this.sid = sid;
        this.specs = specs;
        this.weight = weight;
        this.marketPrice = marketPrice;
        this.price = price;
        this.kid = kid;
        this.stock = stock;
        this.pcode = pcode;
        this.pstand = pstand;
        this.pdate = pdate;
        this.brand = brand;
        this.level = level;
        this.paddress = paddress;
        this.baozi = baozi;
    }

    private String baozi;
    public  Size() {
    }



    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSpecs() {
        return specs;
    }

    public void setSpecs(String specs) {
        this.specs = specs;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public double getMarketPrice() {
        return marketPrice;
    }

    public void setMarketPrice(double marketPrice) {
        this.marketPrice = marketPrice;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getKid() {
        return kid;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }

    public Stock getStock() {
        return stock;
    }

    public void setStock(Stock stock) {
        this.stock = stock;
    }

    public String getPcode() {
        return pcode;
    }

    public void setPcode(String pcode) {
        this.pcode = pcode;
    }

    public String getPstand() {
        return pstand;
    }

    public void setPstand(String pstand) {
        this.pstand = pstand;
    }

    public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getPaddress() {
        return paddress;
    }

    public String getBaozi() {
        return baozi;
    }

    public void setBaozi(String baozi) {
        this.baozi = baozi;
    }

    public void setPaddress(String paddress) {
        this.paddress = paddress;
    }

    @Override
    public String toString() {
        return "Size{" +
                "sid=" + sid +
                ", specs='" + specs + '\'' +
                ", weight='" + weight + '\'' +
                ", marketPrice=" + marketPrice +
                ", price=" + price +
                ", kid=" + kid +
                ", stock=" + stock +
                ", pcode='" + pcode + '\'' +
                ", pstand='" + pstand + '\'' +
                ", pdate=" + pdate +
                ", brand='" + brand + '\'' +
                ", level='" + level + '\'' +
                ", paddress='" + paddress + '\'' +
                '}';
    }
}
