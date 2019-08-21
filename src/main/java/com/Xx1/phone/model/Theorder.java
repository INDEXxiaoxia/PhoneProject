package com.Xx1.phone.model;

import javax.persistence.Id;
import javax.persistence.Table;

/***
 * 联系人  callman
 * 手机号码 callnum
 * 省 province
 * 城市 city
 * 区县  district
 * 详细地址 aaddrr
 * 姓名  realname
 * 支付宝账号 paynum
 */
@Table
public class Theorder {
    @Id
    private Long orderId;
    private Long uid;
    private Long modelId;
    private Double lastPrice;
    private String haveTips;
    private Double incar;
    private String callman;
    private String callnum;
    private String addr;
    private String aaddrr;
    private String realname;
    private String province;
    private String city;
    private String district;
    private String paynum;
    private String ordertime;

    @Override
    public String toString() {
        return "Theorder{" +
                "orderId=" + orderId +
                ", uid=" + uid +
                ", modelId=" + modelId +
                ", lastPrice=" + lastPrice +
                ", haveTips='" + haveTips + '\'' +
                ", incar=" + incar +
                ", callman='" + callman + '\'' +
                ", callnum='" + callnum + '\'' +
                ", addr='" + addr + '\'' +
                ", aaddrr='" + aaddrr + '\'' +
                ", realname='" + realname + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", district='" + district + '\'' +
                ", paynum='" + paynum + '\'' +
                ", ordertime='" + ordertime + '\'' +
                '}';
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

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getPaynum() {
        return paynum;
    }

    public void setPaynum(String paynum) {
        this.paynum = paynum;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime;
    }

    public String getCallman() {
        return callman;
    }

    public void setCallman(String callman) {
        this.callman = callman;
    }

    public String getCallnum() {
        return callnum;
    }

    public void setCallnum(String callnum) {
        this.callnum = callnum;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getAaddrr() {
        return aaddrr;
    }

    public void setAaddrr(String aaddrr) {
        this.aaddrr = aaddrr;
    }

    public Double getIncar() {
        return incar;
    }

    public void setIncar(Double incar) {
        this.incar = incar;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }


    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }


    public Long getModelId() {
        return modelId;
    }

    public void setModelId(Long modelId) {
        this.modelId = modelId;
    }


    public Double getLastPrice() {
        return lastPrice;
    }

    public void setLastPrice(Double lastPrice) {
        this.lastPrice = lastPrice;
    }


    public String getHaveTips() {
        return haveTips;
    }

    public void setHaveTips(String haveTips) {
        this.haveTips = haveTips;
    }

}
