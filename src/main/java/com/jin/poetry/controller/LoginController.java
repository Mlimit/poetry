package com.jin.poetry.controller;


import java.io.IOException;
import java.util.Date;

import com.jin.poetry.domain.VerifyCode;
import com.jin.poetry.service.IVerifyCodeGen;
import com.jin.poetry.service.impl.SimpleCharVerifyCodeGenImpl;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jin.poetry.common.ActiverUser;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.common.WebUtils;
import com.jin.poetry.domain.Loginfo;
import com.jin.poetry.service.LoginfoService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.sun.xml.internal.ws.spi.db.BindingContextFactory.LOGGER;

/**
 * 登陆前端控制器
 */
@Controller
public class LoginController {

    @Autowired
    private LoginfoService loginfoService;

    @ResponseBody
    @RequestMapping("/sys_login")
    public ResultObj login(String loginname, String password,String code, HttpServletRequest request) {
        Subject subject = SecurityUtils.getSubject();
        AuthenticationToken token = new UsernamePasswordToken(loginname, password);
        try {
            String verifyCode = request.getSession().getAttribute("VerifyCode").toString().toLowerCase();
            if(!verifyCode.equals(code.toLowerCase())){
                return ResultObj.LOGIN_ERROR_CODE;
            }
            subject.login(token);
            ActiverUser activerUser = (ActiverUser) subject.getPrincipal();
            WebUtils.getSession().setAttribute("user", activerUser.getUser());
            //记录登陆日志
            Loginfo entity = new Loginfo();
            entity.setLoginname(activerUser.getUser().getUsername() + "-" + activerUser.getUser().getLoginname());
            entity.setLoginip(WebUtils.getRequest().getRemoteAddr());
            entity.setLogintime(new Date());
            loginfoService.save(entity);
            return ResultObj.LOGIN_SUCCESS;
        } catch (AuthenticationException e) {
            e.printStackTrace();
            return ResultObj.LOGIN_ERROR_PASS;
        }
    }

    @RequestMapping("/logout")
    public void logout() {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
    }

    @GetMapping("/verifyCode")
    public void verifyCode(HttpServletRequest request, HttpServletResponse response) {
        IVerifyCodeGen iVerifyCodeGen = new SimpleCharVerifyCodeGenImpl();
        try {
            //设置长宽
            VerifyCode verifyCode = iVerifyCodeGen.generate(80, 28);
            String code = verifyCode.getCode();
            LOGGER.info(code);
            //将VerifyCode绑定session
            request.getSession().setAttribute("VerifyCode", code);
            //设置响应头
            response.setHeader("Pragma", "no-cache");
            //设置响应头
            response.setHeader("Cache-Control", "no-cache");
            //在代理服务器端防止缓冲
            response.setDateHeader("Expires", 0);
            //设置响应内容类型
            response.setContentType("image/jpeg");
            response.getOutputStream().write(verifyCode.getImgBytes());
            response.getOutputStream().flush();
        } catch (IOException e) {
            LOGGER.info(e.toString());
        }
    }
}

