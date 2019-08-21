package com.Xx1.phone.model;

import java.util.List;

//orderId,uid,modelId=>model,lastPrice,haveTips=>[tips],incar
public class PackageOrder {
    private Long orderId;
    private Long uid;
    private Pmodel pmodel;
    private Double lastPrice;
    private List<Sontips> sontipsList;
    private  Double incar;
    private Theorder theorder;
    public PackageOrder() {
        super();
    }

    public PackageOrder(Long orderId, Long uid, Pmodel pmodel, Double lastPrice, List<Sontips> sontipsList, Double incar, Theorder theorder) {
        this.orderId = orderId;
        this.uid = uid;
        this.pmodel = pmodel;
        this.lastPrice = lastPrice;
        this.sontipsList = sontipsList;
        this.incar = incar;
        this.theorder = theorder;
    }

    @Override
    public String toString() {
        return "PackageOrder{" +
                "orderId=" + orderId +
                ", uid=" + uid +
                ", pmodel=" + pmodel +
                ", lastPrice=" + lastPrice +
                ", sontipsList=" + sontipsList +
                ", incar=" + incar +
                ", theorder=" + theorder +
                '}';
    }

    public Theorder getTheorder() {
        return theorder;
    }

    public void setTheorder(Theorder theorder) {
        this.theorder = theorder;
    }

    public PackageOrder(Long orderId, Long uid, Pmodel pmodel, Double lastPrice, List<Sontips> sontipsList, Double incar) {
        this.orderId = orderId;
        this.uid = uid;
        this.pmodel = pmodel;
        this.lastPrice = lastPrice;
        this.sontipsList = sontipsList;
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

    public Pmodel getPmodel() {
        return pmodel;
    }

    public void setPmodel(Pmodel pmodel) {
        this.pmodel = pmodel;
    }

    public Double getLastPrice() {
        return lastPrice;
    }

    public void setLastPrice(Double lastPrice) {
        this.lastPrice = lastPrice;
    }

    public List<Sontips> getSontipsList() {
        return sontipsList;
    }

    public void setSontipsList(List<Sontips> sontipsList) {
        this.sontipsList = sontipsList;
    }

    public Double getIncar() {
        return incar;
    }

    public void setIncar(Double incar) {
        this.incar = incar;
    }
}
