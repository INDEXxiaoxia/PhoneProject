package com.Xx1.phone.model;

import javax.persistence.Id;
import javax.persistence.Table;

/***
 * 产品类型
 */
@Table
public class Producttype {
    @Id
    private Long productTypeId;
    private String productName;

    @Override
    public String toString() {
        return "Producttype{" +
                "productTypeId=" + productTypeId +
                ", productName='" + productName + '\'' +
                '}';
    }

    public Long getProductTypeId() {
        return productTypeId;
    }

    public void setProductTypeId(Long productTypeId) {
        this.productTypeId = productTypeId;
    }


    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

}
