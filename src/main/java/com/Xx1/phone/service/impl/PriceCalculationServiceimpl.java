package com.Xx1.phone.service.impl;

import com.Xx1.phone.mapper.DiscounttipsMapper;
import com.Xx1.phone.mapper.PmodelMapper;
import com.Xx1.phone.model.Discounttips;
import com.Xx1.phone.model.Pmodel;
import com.Xx1.phone.service.PriceCalculationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional//事物注解
public class PriceCalculationServiceimpl implements PriceCalculationService {
    @Autowired
    PmodelMapper pmodelMapper;
    @Autowired
    DiscounttipsMapper discounttipsMapper;

    @Override
    public int getSaigoKachi(String pmodelId, String allSelectTips) {
        Pmodel pmodel = pmodelMapper.selectByPrimaryKey(pmodelId);
        int highPrice = pmodel.getHighPrice().intValue();
        int lowPrice = pmodel.getLowPrice().intValue();
        int tempPrice = highPrice;
        String[] TipIds = allSelectTips.split(",");
        Example example = new Example(Discounttips.class);
        List<Discounttips> discounttips = new ArrayList<>();
        for (String tipId : TipIds) {
            example.and().andEqualTo("tipsId", tipId);
            example.and().andEqualTo("modelId", pmodelId);
            discounttips=discounttipsMapper.selectByExample(example);
            if (discounttips.size() > 0) {
                tempPrice -= discounttips.get(0).getDiscountMoney();
            }
            example.clear();
        }
        if (tempPrice < lowPrice) {
            tempPrice = lowPrice;
        }
        if (tempPrice > highPrice) {
            tempPrice = highPrice;
        }
        return tempPrice;
    }

    @Override
    public Pmodel getThisPmodel(String pmodelId) {
        return pmodelMapper.selectByPrimaryKey(pmodelId);
    }
}
