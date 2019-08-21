package com.Xx1.phone.service;

import com.Xx1.phone.model.Dadtips;
import com.Xx1.phone.model.Pmodel;
import com.Xx1.phone.model.Producttype;
import com.Xx1.phone.model.Sontips;
import org.springframework.ui.Model;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

public interface InfoAssessService {
    List<Map<Dadtips, List<Sontips>>> getAllInfoPmodel(Integer modId);

    Pmodel getthisPmodel(Integer modId);

    String queryProd(Integer modId);
}
