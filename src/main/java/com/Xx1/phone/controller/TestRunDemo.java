package com.Xx1.phone.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestRunDemo {

    @RequestMapping("/demo01")
    public String test01_Run(){
        System.out.println("项目成功启动！");
        return "测试启动成功！<br>run successful!";
    }
}
