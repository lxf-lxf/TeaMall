package com.mall.entity;

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

    public Size() {
    }

    public Size(int sid, String specs, String weight, double marketPrice, double price, int kid, Stock stock) {
        this.sid = sid;
        this.specs = specs;
        this.weight = weight;
        this.marketPrice = marketPrice;
        this.price = price;
        this.kid = kid;
        this.stock = stock;
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
                '}';
    }
}
