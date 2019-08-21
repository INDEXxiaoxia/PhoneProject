package com.Xx1.phone.controller;

import com.Xx1.phone.model.PackageOrder;
import com.Xx1.phone.model.Pmodel;
import com.Xx1.phone.model.Theorder;
import com.Xx1.phone.model.User;
import com.Xx1.phone.service.TheOrderAndCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderView {
    @Autowired
    TheOrderAndCarService ocService;

    @RequestMapping("/01")
    public String addCar(Model model, Theorder theorder, String orderId) {
        if (theorder.getUid()==null){
            return "forward:/lr/l.v";
        }
        if (theorder != null&&orderId=="") {//在传递删除的订单ID为空且新订单不为空时添加
           ocService.addToOrderTab(theorder, 0);//插入订单表 设置incar为0  0为在车里
        }
        if (orderId!=""){//如果接收到orderid就执行删除
            ocService.delOrer(orderId);
        }

        List<Theorder> LoInCar = ocService.queryAllInCar(theorder.getUid(), 0);//获取所有当前用户车里的订单
//        [orderId,uid,modelId=>model,lastPrice,haveTips=>[tips],incar]
        List<PackageOrder> packageOrderList = ocService.PackageOrderList(LoInCar);
        Pmodel thisPmodel = ocService.findByID(theorder.getModelId());
//        return "forward:/index/01";
        //处理价格列表
        int LastPrice = theorder.getLastPrice().intValue();
        String splitPrice[] = priceHandle(LastPrice);
        model.addAttribute("LastPrice", LastPrice);
        model.addAttribute("thisPmodel", thisPmodel);
        model.addAttribute("splitPrice", splitPrice);
        model.addAttribute("AllSelectTips", theorder.getHaveTips());
        model.addAttribute("LoInCar", LoInCar);
        model.addAttribute("packageOrderList", packageOrderList);
        return "price";
    }

    @RequestMapping("/02")
    public String delorder(Model model, String orderId) {
        ocService.delOrer(orderId);
        return "forward:/order/01";

    }

    public String[] priceHandle(int LastPrice) {
        String priceSp = LastPrice + "";
        if (LastPrice < 1000) {
            priceSp = "0" + priceSp;
        }
        if (LastPrice < 100) {
            priceSp = "0" + priceSp;
        }
        return priceSp.split("");
    }
}
