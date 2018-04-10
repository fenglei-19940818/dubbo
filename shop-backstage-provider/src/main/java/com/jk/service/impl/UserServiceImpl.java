package com.jk.service.impl;

import com.jk.dao.UserDao;
import com.jk.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao usertDao;

    public String Test() {
        System.out.println("shengchanz");
        return "hhh";
    }
}
