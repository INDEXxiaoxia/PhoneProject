package com.Xx1.phone.model;

import javax.persistence.Id;
import javax.persistence.Table;

@Table
public class Discounttips {
    @Id
    private Long tipsId;
    @Id
    private Long modelId;
    private Double discountMoney;

    @Override
    public String toString() {
        return "Discounttips{" +
                "tipsId=" + tipsId +
                ", modelId=" + modelId +
                ", discountMoney=" + discountMoney +
                '}';
    }

    public Long getTipsId() {
        return tipsId;
    }

    public void setTipsId(Long tipsId) {
        this.tipsId = tipsId;
    }


    public Long getModelId() {
        return modelId;
    }

    public void setModelId(Long modelId) {
        this.modelId = modelId;
    }


    public Double getDiscountMoney() {
        return discountMoney;
    }

    public void setDiscountMoney(Double discountMoney) {
        this.discountMoney = discountMoney;
    }

}
