package com.mall.util;//User: linxifan  Date: 2020/8/11  Time: 19:28

import com.mall.entity.Adress;

import java.util.List;

public class Result {
    private List<Adress> adressList;
    private Long total;
    private Integer pageNum;

    public Result() {
    }

    public List<Adress> getAdressList() {
        return adressList;
    }

    public void setAdressList(List<Adress> adressList) {
        this.adressList = adressList;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    @Override
    public String toString() {
        return "Result{" +
                "adressList=" + adressList +
                ", total=" + total +
                ", pageNum=" + pageNum +
                '}';
    }

}
