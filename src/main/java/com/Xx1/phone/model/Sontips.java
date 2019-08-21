package com.Xx1.phone.model;

import javax.persistence.Id;
import javax.persistence.Table;

@Table
public class Sontips {
    @Id
    private Long tipsId;
    private String theDesc;
    private Long dadId;
    private String detaDesc;


    @Override
    public String toString() {
        return "Sontips{" +
                "tipsId=" + tipsId +
                ", theDesc='" + theDesc + '\'' +
                ", dadId=" + dadId +
                ", detaDesc='" + detaDesc + '\'' +
                '}';
    }

    public Long getTipsId() {
        return tipsId;
    }

    public void setTipsId(Long tipsId) {
        this.tipsId = tipsId;
    }


    public String getTheDesc() {
        return theDesc;
    }

    public void setTheDesc(String theDesc) {
        this.theDesc = theDesc;
    }


    public Long getDadId() {
        return dadId;
    }

    public void setDadId(Long dadId) {
        this.dadId = dadId;
    }


    public String getDetaDesc() {
        return detaDesc;
    }

    public void setDetaDesc(String detaDesc) {
        this.detaDesc = detaDesc;
    }

}
