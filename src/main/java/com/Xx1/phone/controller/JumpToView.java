package com.Xx1.phone.controller;

import com.Xx1.phone.model.User;
import com.Xx1.phone.service.LoginRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
@SessionAttributes(value = {"userInSession"})
public class JumpToView {
    @Autowired
    LoginRegisterService lrService;

    @RequestMapping("/lr/r.v")
    public String RegisterView() {
        return "register";
    }
    @RequestMapping("/lr/l.v")
    public  String LoginView(){
        return "login";
    }
    @RequestMapping("/lr/l.o")
    public String LogOutView(SessionStatus ss){
        ss.setComplete();
//        User user=new User();
//        user.setUname("我tmd不是给你退出登录了吗？");
//        model.addAttribute("userInSession",user);
        return "redirect:/index/01";
    }
}
