package com.Xx1.phone.service.impl;

import com.Xx1.phone.mapper.BandMapper;
import com.Xx1.phone.mapper.PmodelMapper;
import com.Xx1.phone.mapper.ProducttypeMapper;
import com.Xx1.phone.model.Brand;
import com.Xx1.phone.model.Pmodel;
import com.Xx1.phone.model.Producttype;
import com.Xx1.phone.service.IndexFirstService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

//1.产品类型列表、2.手机品牌列表、3.全部手机列表
@Service
@Transactional
public class IndexFirstServiceimpl implements IndexFirstService {
    @Autowired
    BandMapper bandMapper;
    @Autowired
    ProducttypeMapper producttypeMapper;
    @Autowired
    PmodelMapper pmodelMapper;

    @Override
    public Map<Integer, Object> selectProData(Integer proID, Integer braID, int i, int i1, String SearchParam) {
        List<Producttype> producttypes = producttypeMapper.selectAll();//产品类型
        //查品牌
        Example exampleBrand = new Example(Brand.class);
        exampleBrand.and().andEqualTo("proId", proID);
        List<Brand> brands = bandMapper.selectByExample(exampleBrand);
        //查型号
        Example exampleModel = new Example(Pmodel.class);
        exampleModel.and().andEqualTo("productId", proID);
        exampleModel.and().andEqualTo("brandId", braID);
        if (SearchParam != "" &&SearchParam != null) {
            exampleModel.and().andLike("modelName", "%" + SearchParam + "%");
        }
        PageHelper.startPage(i, i1);
        List<Pmodel> pmodels = pmodelMapper.selectByExample(exampleModel);
        //整合
        Map<Integer, Object> paramToView = new HashMap<>();
        paramToView.put(1, producttypes);//产品类型列表
        paramToView.put(2, brands);//品牌类型列表
        paramToView.put(3, pmodels);//型号列表
        paramToView.put(4, new PageInfo<>(pmodels));//型号列表分页化
        return paramToView;
    }


}
