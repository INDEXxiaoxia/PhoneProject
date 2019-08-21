package com.Xx1.phone.controller;

import com.Xx1.phone.model.PackageOrder;
import com.Xx1.phone.model.Theorder;
import com.Xx1.phone.model.User;
import com.Xx1.phone.service.TheOrderAndCarService;
import javafx.scene.input.DataFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/buy")
@SessionAttributes(value = {"userInSession"})
public class OrderBuyPayView {
    @Autowired
    TheOrderAndCarService ocService;

    @RequestMapping("/cart")
    public String toCart(Model model, String uid) {
        if (uid == null) {
            return "forward:/lr/l.v";
        }
        //用uid查找该用户所有的未支付订单  0为未支付
        List<Theorder> theorderList = ocService.queryAllInCar(Long.parseLong(uid), 0);
        List<PackageOrder> packageOrders = ocService.PackageOrderList(theorderList);//查到包装列表
        model.addAttribute("packageOrders", packageOrders);
        return "cart";
    }

    //    "/buy/cart?uid="+uid+"&pmid="+pmid+"&alltips="+alltips+"&LastPrice="+LastPrice;
    @RequestMapping("cartthis")
    public String toCartThis(Model model, String uid, String pmid, String alltips, String LastPrice) {
        if (uid == null||uid=="") {
            return "forward:/lr/l.v";
        }
        Theorder theorder = new Theorder();
        theorder.setUid(Long.parseLong(uid));
        theorder.setModelId(Long.parseLong(pmid));
        theorder.setHaveTips(alltips);
        theorder.setLastPrice(Double.parseDouble(LastPrice));
        //将时间返回回来传递到前端，前端再发送给success
        String ordertime = ocService.addToOrderTab(theorder, 2);//  i=2  添加到临时
        List<Theorder> theorderList = new ArrayList<>();
        theorderList.add(theorder);
        List<PackageOrder> packageOrders = ocService.PackageOrderList(theorderList);
        model.addAttribute("packageOrders", packageOrders);
        model.addAttribute("ordertime", ordertime);
        return "cart";
    }


    @RequestMapping("/success")
    //x下单
    public String toSuccess(Model model, Theorder theorder, String isAll, String Sessionuid) {
        Date now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
        String dateString = formatter.format(now);
        if (Integer.parseInt(isAll) > 1) {//如果前端的列表长度大于一说明他在提交购物车
            //批量提交
            ocService.setAllOrderPay(theorder, dateString, Sessionuid);
        } else {
            //提交一跳
            try {
                ocService.setOrderPay(theorder, dateString, Sessionuid);
            } catch (Exception e) {
//            购物车中只有一条的情况
                ocService.setAllOrderPay(theorder, dateString, Sessionuid);
            }
        }
        model.addAttribute("dateString",dateString);
        model.addAttribute("paynum",theorder.getPaynum());
        return "success";
    }
    @RequestMapping("/my")
    public String toMy(Model model, ModelMap modelMap
    , HttpSession session,String uid){
        //搜索用户的所有订单
//        User u = (User)session.getAttribute("userInSession");
        List<Theorder> theorderList = ocService.queryAllInCar(Long.parseLong(uid), 1);
        List<PackageOrder> packageOrders = ocService.PackageOrderList(theorderList);
        model.addAttribute("packageOrders",packageOrders);
//        model.addAttribute("userInSession",user);
        return "order";
    }
}
