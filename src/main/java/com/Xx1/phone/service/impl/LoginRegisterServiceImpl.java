package com.Xx1.phone.service.impl;

import com.Xx1.phone.mapper.LoginRegisterMapper;
import com.Xx1.phone.model.ResultDict;
import com.Xx1.phone.model.User;
import com.Xx1.phone.service.LoginRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
@Transactional//事物注解
public class LoginRegisterServiceImpl implements LoginRegisterService {
    @Autowired
    LoginRegisterMapper lrMapper;//---

    @Override
    //进行注册业务的具体实现
    public ResultDict doRegister(User param) {
        Example example=new Example(User.class);
        example.and().andEqualTo("uname",param.getUname());
        List<User> users = lrMapper.selectByExample(example);
        System.out.println(users.size()+"  "+users.isEmpty());
        if (!users.isEmpty()) {
            System.out.println("没进行注册");
            return new ResultDict(11, "用户名已存在！");
        } else {
            System.out.println(users);
            lrMapper.insertSelective(param);
            System.out.println("进行注册");
            return new ResultDict(21, "注册成功！");
        }


    }

    @Override
    public User doLogin(String uname, String pwd) {
        Example example=new Example(User.class);
        example.and().andEqualTo("uname",uname).andEqualTo("pwd",pwd);
        List<User> users = lrMapper.selectByExample(example);
        if (users.size()>0){
            return users.get(0);
        }
        return null;
    }
}
