package com.Xx1.phone.controller;


import com.Xx1.phone.model.Dadtips;
import com.Xx1.phone.model.Pmodel;
import com.Xx1.phone.model.ResultDict;
import com.Xx1.phone.model.Sontips;
import com.Xx1.phone.service.InfoAssessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * 通过型号ID查询产品的名称，最高价，小标签列表，大标签列表
 *      *
 *      * [
 *      *    {
 *      *       {id,daddesc,stepId},
 *      *       [{id，Dadid，descc}]
 *      *     },
 *      * ]
 *      *
 *      *
 */

@Controller
@RequestMapping("/Ass")
public class InfoAssessView {
    @Autowired
    InfoAssessService infoAssessService;
    @RequestMapping("/ess")
    public String AssessView(Model model, Integer modId){
        List<Map<Dadtips, List<Sontips>>> mapList = infoAssessService.getAllInfoPmodel(modId);
        Pmodel pmodel=infoAssessService.getthisPmodel(modId);
        System.out.println(RandPrice(pmodel));
        model.addAttribute("mapList",mapList);
        model.addAttribute("thisPmodel",pmodel);
        model.addAttribute("PriceList",RandPrice(pmodel));
        model.addAttribute("ThisProduct",infoAssessService.queryProd(modId));
        return "info";
    }
    public int[] RandPrice(Pmodel pmodel){
        double highPrice=pmodel.getHighPrice();
        double lowPrice=pmodel.getLowPrice();
        int priceList[]=new int[5];
        int TempPrice;
        Random random=new Random();
        for(int x=0;x<=4;x++){
            TempPrice= (int) (random.nextInt(10)*(highPrice-lowPrice+1)+highPrice)/10;
            priceList[x]=TempPrice;
        }
        return  priceList;

    }
}

