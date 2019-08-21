package com.Xx1.phone.service.impl;

import com.Xx1.phone.mapper.LoginRegisterMapper;
import com.Xx1.phone.mapper.PmodelMapper;
import com.Xx1.phone.mapper.SontipsMapper;
import com.Xx1.phone.mapper.TheOrderMapper;
import com.Xx1.phone.model.PackageOrder;
import com.Xx1.phone.model.Pmodel;
import com.Xx1.phone.model.Sontips;
import com.Xx1.phone.model.Theorder;
import com.Xx1.phone.service.TheOrderAndCarService;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import tk.mybatis.mapper.entity.Example;

import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
@Transactional
public class TheOrderAndCarServiceimpl implements TheOrderAndCarService {
    @Autowired
    TheOrderMapper theOrderMapper;
    @Autowired
    PmodelMapper pmodelMapper;
    @Autowired
    SontipsMapper sontipsMapper;

    @Override
    public String addToOrderTab(Theorder theorder, Integer i) {
        String dateString="";
        if (i == 0 || i == null) {
            theorder.setIncar(i.doubleValue());//在购物车，未支付状态
        } else if (i == 1) {
            theorder.setIncar(new Double(1));//已支付订单中
        } else if (i == 2) {//临时提交
            theorder.setIncar(new Double(2));//立即下单预备区
            Date now = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
            dateString = formatter.format(now);
            theorder.setOrdertime(dateString);
        }
        int insert = theOrderMapper.insert(theorder);

        return dateString;
    }

    @Override
    //通过uid查出订单列表   1已支付或者0未支付 3所有
    public List<Theorder> queryAllInCar(Long uid, int i) {
        Example example = new Example(Theorder.class);
        if (i == 0 || i == 1) {
            example.and().andEqualTo("uid", uid).andEqualTo("incar", i);
        }
        if (i == 3) {
            example.and().andEqualTo("uid", uid);
        }
        List<Theorder> theorders = theOrderMapper.selectByExample(example);
        return theorders;
    }

    @Override
    public Pmodel findByID(Long modelId) {
        return pmodelMapper.selectByPrimaryKey(modelId);
    }

    @Override
    public List<PackageOrder> PackageOrderList(List<Theorder> theorders) {
//         [orderId,uid,modelId=>model,lastPrice,haveTips=>[tips],incar]
        List<PackageOrder> packageOrders = new ArrayList<>();
        List<String> tipids = new ArrayList<>();
        List<Sontips> sontipsList = new ArrayList<>();
        Pmodel tempPmodel = new Pmodel();
        for (Theorder theorder : theorders) {
            tempPmodel = pmodelMapper.selectByPrimaryKey(theorder.getModelId());//对象得到
            tipids = new ArrayList<>(Arrays.asList(theorder.getHaveTips().split(",")));
            //数组转列表 的列表不能直接使用 add和remove
            for (String tipid : tipids) {
                sontipsList.add(sontipsMapper.selectByPrimaryKey(tipid));
            }//对象列表完成
            packageOrders.add(new PackageOrder(theorder.getOrderId(), theorder.getUid(),
                    tempPmodel, theorder.getLastPrice(), new ArrayList<Sontips>(sontipsList), theorder.getIncar(),theorder));
            sontipsList.clear();//打包完成后清空列表用于下一次遍历
            tipids.clear();

        }
        return packageOrders;
    }

    @Override
    public void delOrer(String orderId) {
        theOrderMapper.delete(theOrderMapper.selectByPrimaryKey(orderId));
    }

    @Override
    //更改订单状态
    public void setOrderPay(Theorder theorder, String dateString, String sessionuid) {
        Example example=new Example(Theorder.class);
        example.and().andEqualTo(
                "incar",theorder.getIncar()).
                andEqualTo("ordertime",theorder.getOrdertime())
                .andEqualTo("uid",sessionuid);
        List<Theorder> theorderList = theOrderMapper.selectByExample(example);

        SetPmodel(dateString, theorderList.get(0), theorder);
    }

    @Override
    //根据用户id批量提交
    public void setAllOrderPay(Theorder theorder, String dateString, String sessionuid) {
        Example example = new Example(Theorder.class);
        example.and().andEqualTo("uid", sessionuid).andEqualTo("incar",0);
        List<Theorder> theorderList = theOrderMapper.selectByExample(example);
        for (Theorder theorderSel : theorderList) {
            SetPmodel(dateString, theorderSel, theorder);
        }

    }

    //上面两个函数写的时候好像没注意把类型写错了几个 ，可能出bug
    //更改订单状态
    public void SetPmodel(String dateString, Theorder theorderSel, Theorder theorder) {
        theorderSel.setCallman(theorder.getCallman());
        theorderSel.setCallnum(theorder.getCallnum());
        theorderSel.setProvince(theorder.getProvince());
        theorderSel.setCity(theorder.getCity());
        theorderSel.setDistrict(theorder.getDistrict());
        theorderSel.setAaddrr(theorder.getAaddrr());
        theorderSel.setRealname(theorder.getRealname());
        theorderSel.setPaynum(theorder.getPaynum());
        theorderSel.setOrdertime(dateString);
        theorderSel.setIncar(1.0);//将订单改为已支付
        theOrderMapper.updateByPrimaryKey(theorderSel);

    }


}
