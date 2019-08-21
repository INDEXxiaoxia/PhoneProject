package com.Xx1.phone.model;

import javax.persistence.Id;
import javax.persistence.Table;

/***
 * 手机壳型号
 */
@Table
public class Pmodel {
    @Id
    private Long modelId;
    private String modelName;
    private String modelImg;
    private Long brandId;
    private Long productId;
    private String haveTips;
    private Double highPrice;
    private Double lowPrice;
    private Integer ishot;

    @Override
    public String toString() {
        return "Pmodel{" +
                "modelId=" + modelId +
                ", modelName='" + modelName + '\'' +
                ", modelImg='" + modelImg + '\'' +
                ", brandId=" + brandId +
                ", productId=" + productId +
                ", haveTips='" + haveTips + '\'' +
                ", highPrice=" + highPrice +
                ", lowPrice=" + lowPrice +
                ", ishot=" + ishot +
                '}';
    }

    public Integer getIshot() {
        return ishot;
    }

    public void setIshot(Integer ishot) {
        this.ishot = ishot;
    }

    public Long getModelId() {
        return modelId;
    }

    public void setModelId(Long modelId) {
        this.modelId = modelId;
    }


    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }


    public String getModelImg() {
        return modelImg;
    }

    public void setModelImg(String modelImg) {
        this.modelImg = modelImg;
    }


    public Long getBrandId() {
        return brandId;
    }

    public void setBrandId(Long brandId) {
        this.brandId = brandId;
    }


    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }


    public String getHaveTips() {
        return haveTips;
    }

    public void setHaveTips(String haveTips) {
        this.haveTips = haveTips;
    }


    public Double getHighPrice() {
        return highPrice;
    }

    public void setHighPrice(Double highPrice) {
        this.highPrice = highPrice;
    }


    public Double getLowPrice() {
        return lowPrice;
    }

    public void setLowPrice(Double lowPrice) {
        this.lowPrice = lowPrice;
    }

}
