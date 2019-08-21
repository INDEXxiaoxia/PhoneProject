package com.Xx1.phone.model;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Objects;

@Table
public class Dadtips {
    @Id
    private Long tipsId;
    private String theDesc;
    private Long theStep;
    private Long isEnum;

    @Override
    public String toString() {
        return "Dadtips{" +
                "tipsId=" + tipsId +
                ", theDesc='" + theDesc + '\'' +
                ", theStep=" + theStep +
                ", isEnum=" + isEnum +
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


    public Long getTheStep() {
        return theStep;
    }

    public void setTheStep(Long theStep) {
        this.theStep = theStep;
    }


    public Long getIsEnum() {
        return isEnum;
    }

    public void setIsEnum(Long isEnum) {
        this.isEnum = isEnum;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Dadtips dadtips = (Dadtips) o;
        return Objects.equals(tipsId, dadtips.tipsId) &&
                Objects.equals(theDesc, dadtips.theDesc) &&
                Objects.equals(theStep, dadtips.theStep) &&
                Objects.equals(isEnum, dadtips.isEnum);
    }

    @Override
    public int hashCode() {
        return Objects.hash(tipsId, theDesc, theStep, isEnum);
    }
}
