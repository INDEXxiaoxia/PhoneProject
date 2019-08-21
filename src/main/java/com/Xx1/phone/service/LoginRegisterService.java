package com.Xx1.phone.service;

import com.Xx1.phone.model.ResultDict;
import com.Xx1.phone.model.User;

public interface LoginRegisterService {
    ResultDict doRegister(User param);

    User doLogin(String uname, String pwd);
}
