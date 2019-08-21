package com.Xx1.phone.controller;

import com.Xx1.phone.model.ResultDict;
import com.Xx1.phone.model.User;
import com.Xx1.phone.service.LoginRegisterService;
import com.alibaba.fastjson.JSON;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.HashMap;
import java.util.Map;
@SessionAttributes(value = {"userInSession"})
@RestController
@RequestMapping("/lr")
public class LoginRegisterView {
    @Autowired
    LoginRegisterService lrService;
    @RequestMapping("/r")
    //处理注册流程，注册完成跳转到登录，注册失败留在原界面
    public String Register(String uname, String pwd) {
        User param=new User();
        param.setUname(uname);
        param.setPwd(pwd);
        System.out.println("前端传递："+param);
        ResultDict resultDict = lrService.doRegister(param);
        HashMap<String, Object> msgDict = new HashMap<>();
        msgDict.put("resultDict",resultDict);
        return JSON.toJSONString(msgDict);
    }
    @RequestMapping("/l")
    public String Login(Model model,String uname,String pwd,String remeberMe,String settle){
        User key=lrService.doLogin(uname,pwd);
        String data="";
        if (key!=null){//用户名密码正确
            model.addAttribute("userInSession",key);
            data="success";
        }else { data="faild"; }
        return data;
    }
}
