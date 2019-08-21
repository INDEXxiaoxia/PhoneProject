package com.Xx1.phone.controller;

import com.Xx1.phone.model.Pmodel;
import com.Xx1.phone.service.PriceCalculationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/***
 * 传递到前端参数
 *      -最终价格
 *      -型号对象
 */

@Controller
@RequestMapping("/data")
public class GetClientParamView {
    @Autowired
    PriceCalculationService priceService;
    @RequestMapping("/datahandle")
    public String ParamAccept(Model model,String pmodelId, String AllSelectTips){
        int LastPrice=priceService.getSaigoKachi(pmodelId,AllSelectTips);//根据型号ID和所选标签算价格
        Pmodel thisPmodel=priceService.getThisPmodel(pmodelId);//findBYID
        String priceSp=LastPrice+"";
        if (LastPrice<1000){
            priceSp="0"+priceSp;
        }
        if (LastPrice<100){
            priceSp="0"+priceSp;
        }
        String[] splitPrice = priceSp.split("");
        model.addAttribute("LastPrice",LastPrice);
        model.addAttribute("thisPmodel",thisPmodel);
        model.addAttribute("splitPrice",splitPrice);
        model.addAttribute("AllSelectTips",AllSelectTips);
        return "price";

    }
}
