package com.Xx1.phone.service;

import com.Xx1.phone.model.PackageOrder;
import com.Xx1.phone.model.Pmodel;
import com.Xx1.phone.model.Theorder;

import java.util.List;

public interface TheOrderAndCarService {
    String addToOrderTab(Theorder theorder, Integer i);

    List<Theorder> queryAllInCar(Long uid,int i);

    Pmodel findByID(Long modelId);

    List<PackageOrder> PackageOrderList(List<Theorder> loInCar);

    void delOrer(String orderId);

    void setOrderPay(Theorder theorder, String dateString, String firstmodId);

    void setAllOrderPay(Theorder theorder, String dateString, String sessionuid);
}
