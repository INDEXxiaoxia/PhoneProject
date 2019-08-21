package com.Xx1.phone.service.impl;

import com.Xx1.phone.mapper.*;
import com.Xx1.phone.model.*;
import com.Xx1.phone.service.InfoAssessService;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import java.util.*;

@Service
@Transactional
public class InfoAssessServiceimpl implements InfoAssessService {
    @Autowired
    PmodelMapper pmodelMapper;
    @Autowired
    DadtipsMapper dadtipsMapper;
    @Autowired
    SontipsMapper sontipsMapper;
    @Autowired
    BandMapper bandMapper;
    @Autowired
    ProducttypeMapper producttypeMapper;

    /***
     * [
     *    {
     *       {id,daddesc,stepId},
     *       [{id，Dadid，descc}]
     *     },
     * ]
     *
     */
    @Override
    public List<Map<Dadtips, List<Sontips>>> getAllInfoPmodel(Integer modId) {
        Pmodel pmodel = pmodelMapper.selectByPrimaryKey(modId);
        //获取包含的标签id列表
        String[] tips = pmodel.getHaveTips().split(",");
        //通过标签id查找标签实体列表
        List<Sontips> sontipsList = new ArrayList<>();
        for (String tip : tips) {
            Sontips sontip = sontipsMapper.selectByPrimaryKey(Integer.parseInt(tip));
            sontipsList.add(sontip);
            //[{id，Dadid，descc},]
        }
        //遍历子标签列表获得父标签实体，加进集合去重
        LinkedHashSet<Dadtips> dadtipsSet = new LinkedHashSet<>();
        for (Sontips sontips : sontipsList) {
            Dadtips dadtips = dadtipsMapper.selectByPrimaryKey(sontips.getDadId());
            //[{tipsID,the_Desc,the_Step,is_Enum},]
            dadtipsSet.add(dadtips);
        }
        List<Map<Dadtips, List<Sontips>>> mapList = new ArrayList<>();
        Map<Dadtips, List<Sontips>> map = new LinkedHashMap<>();
        //{{tipsID,the_Desc,the_Step,is_Enum},[{id，Dadid，descc},]}

        //用于存放作为值的子标签列表的临时列表
        List<Sontips> TempSonList = new ArrayList<>();
        for (Dadtips dadtips : dadtipsSet) {
            TempSonList.clear();//清空作为值的列表给下一个父id使用
            for (Sontips sontips : sontipsList) {//遍历子列表中的实体
                if (sontips.getDadId() == dadtips.getTipsId()) {//添加对应的子id实体
                    TempSonList.add(sontips);//在作为值的列表中添加子标签
                }
            }
            map.put(dadtips, new ArrayList<Sontips>(TempSonList));//将父标签和对应的子标签加进字典
            mapList.add(new LinkedHashMap<>(map));
            map.clear();//清空map
        }

        return mapList;
    }

    @Override
    public Pmodel getthisPmodel(Integer modId) {
        return pmodelMapper.selectByPrimaryKey(modId);
    }

    @Override
    public String queryProd(Integer modId) {
        Pmodel pmodel = pmodelMapper.selectByPrimaryKey(modId);
        Brand brand = bandMapper.selectByPrimaryKey(pmodel.getBrandId());
        Producttype producttype = producttypeMapper.selectByPrimaryKey(brand.getProId());
        return producttype.getProductName();
    }


}
