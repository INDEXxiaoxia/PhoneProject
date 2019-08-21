package com.Xx1.phone.service;

import com.Xx1.phone.model.Pmodel;

public interface PriceCalculationService {
    int getSaigoKachi(String pmodelId, String allSelectTips);

    Pmodel getThisPmodel(String pmodelId);
}
