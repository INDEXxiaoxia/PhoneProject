package com.Xx1.phone.service;

import java.util.List;
import java.util.Map;

//用于/index/01
// 用于查询  1.产品类型列表、2.手机品牌列表、3.全部手机列表、4.分页手机模型列表
public interface IndexFirstService {

    Map<Integer, Object> selectProData(Integer proID,Integer braID, int i, int i1,String SearchParam);
}
