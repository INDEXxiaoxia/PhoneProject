package com.Xx1.phone.model;


import javax.persistence.Id;
import javax.persistence.Table;

@Table
public class Brand {
  @Id
  private Long brandId;
  private String brandName;
  private Long proId;

  @Override
  public String toString() {
    return "Brand{" +
            "brandId=" + brandId +
            ", brandName='" + brandName + '\'' +
            ", proId=" + proId +
            '}';
  }

  public Long getBrandId() {
    return brandId;
  }

  public void setBrandId(Long brandId) {
    this.brandId = brandId;
  }


  public String getBrandName() {
    return brandName;
  }

  public void setBrandName(String brandName) {
    this.brandName = brandName;
  }


  public Long getProId() {
    return proId;
  }

  public void setProId(Long proId) {
    this.proId = proId;
  }

}
