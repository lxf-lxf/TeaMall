package com.mall.entity;

/**
 * @Author 锋
 * @Create in 16:01 2020/8/10
 */
// kid                  int not null auto_increment,
//   sid                  int,
//   gid                  int,
//   number               int,
//   primary key (kid)
public class Stock {
    private int sid;
    private int number;

    public Stock() {
    }

    public Stock(int sid, int number) {
        this.sid = sid;
        this.number = number;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "Stock{" +
                "sid=" + sid +
                ", number=" + number +
                '}';
    }
}
