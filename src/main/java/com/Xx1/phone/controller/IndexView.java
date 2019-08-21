package com.Xx1.phone.controller;

import com.Xx1.phone.model.Brand;
import com.Xx1.phone.model.Pmodel;
import com.Xx1.phone.model.Producttype;
import com.Xx1.phone.service.IndexFirstService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/index")
public class IndexView {
    @Autowired
    IndexFirstService iFService;
    //进入主页后查询显示产品类型列表、手机品牌列表、全部手机列表
    @RequestMapping("/01")
    public String index01(Model model) {
        return "redirect:/index/goods?proID=1&i=1";
    }
    @RequestMapping("/goods")
    public String index02(Model model,Integer proID,Integer braID,String i,String focusMove,String SearchParam){//i页数 i1每页条数
        if (i==null||i==""){
            i="1";
        }
        Map<Integer, Object> selectProData = iFService.selectProData(proID,braID,Integer.parseInt(i),4,SearchParam);
        //提取数据列表
        List<Producttype> ListProductType= (List<Producttype>) selectProData.get(1);
        List<Brand> brandList= (List<Brand>) selectProData.get(2);
        List<Pmodel> pmodelList= (List<Pmodel>) selectProData.get(3);
        PageInfo<Pmodel> pageInfo= (PageInfo) selectProData.get(4);
        System.out.println(new PageInfo<>(pmodelList));
        model.addAttribute("productLsit",ListProductType);//产品类型列表
        //整合传递到前端的参数
        model.addAttribute("brandList",brandList);
        model.addAttribute("pmodelList",pmodelList);
        model.addAttribute("pagemodelList",pageInfo);
        model.addAttribute("proID",proID);
        model.addAttribute("braID",braID);
        model.addAttribute("focusMove",focusMove);
        model.addAttribute("SearchParam",SearchParam);
        return "index";


    }

}
