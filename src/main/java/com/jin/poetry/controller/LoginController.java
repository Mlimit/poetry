package com.jin.poetry.controller;


import java.util.Date;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.jin.poetry.common.ActiverUser;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.common.WebUtils;
import com.jin.poetry.domain.Loginfo;
import com.jin.poetry.service.LoginfoService;

/**
 * 登陆前端控制器
 */
@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    private LoginfoService loginfoService;

    @ResponseBody
    @RequestMapping("sys_login")
    public ResultObj login(String loginname, String pwd) {
        Subject subject = SecurityUtils.getSubject();
        AuthenticationToken token = new UsernamePasswordToken(loginname, pwd);
        try {
            subject.login(token);
            ActiverUser activerUser = (ActiverUser) subject.getPrincipal();
            WebUtils.getSession().setAttribute("user", activerUser.getUser());
            //记录登陆日志
            Loginfo entity = new Loginfo();
            entity.setLoginname(activerUser.getUser().getName() + "-" + activerUser.getUser().getLoginname());
            entity.setLoginip(WebUtils.getRequest().getRemoteAddr());
            entity.setLogintime(new Date());
            loginfoService.save(entity);
            return ResultObj.LOGIN_SUCCESS;
        } catch (AuthenticationException e) {
            e.printStackTrace();
            return ResultObj.LOGIN_ERROR_PASS;
        }
    }

    @RequestMapping("sys_logout")
    public String logout() {
//		WebUtils.getSession().invalidate();
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "index/login";
    }
}

