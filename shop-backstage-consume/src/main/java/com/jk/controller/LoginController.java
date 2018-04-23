package com.jk.controller;

import com.jk.model.User;
import com.jk.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    private LoginService loginService;

    @RequestMapping("/userlogin")
    @ResponseBody
    public Object userlogin(User user,HttpSession session){
        Map<String, Object> map  = loginService.userlogin(user);
        //从map中get出来登录结果 进行判断
        Integer flag = (Integer) map.get("flag");
        if(flag == 2){
            //如果是登录成功
            //从map中get出来用户对象 存到session中
            User loginUser = (User) map.get("userDB");
            session.setAttribute("loginName", loginUser.getName());
            session.setAttribute("loginID", loginUser.getId());
            session.setAttribute("loginUser", loginUser);
        }
        return flag;
    }


    //跳转展示页面
    @RequestMapping("/toIndex")
    public String toIndex(){
        return "index4";
    }

}
