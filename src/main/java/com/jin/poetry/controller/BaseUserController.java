package com.jin.poetry.controller;

import cn.hutool.core.util.IdUtil;
import com.jin.poetry.common.Constast;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.BaseUser;
import com.jin.poetry.domain.User;
import com.jin.poetry.service.BaseUserService;
import com.jin.poetry.vo.ArticleVo;
import com.jin.poetry.vo.BaseUserVo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BaseUserController {

    @Autowired
    private BaseUserService baseUserService;

    /**
     * 查询
     */
    @RequestMapping("/loadAllBaseUser")
    public DataGridView loadAllBaseUser(BaseUserVo baseUserVo) {
        return baseUserService.loadAllBaseUser(baseUserVo);
    }

    /**
     * 添加
     */
    @RequestMapping("/addBaseUser")
    public ResultObj addBaseUser(BaseUserVo baseUserVo){
        return baseUserService.addBaseUser(baseUserVo);
    }

    /**
     * 更新
     */
    @RequestMapping("/updateBaseUser")
    public ResultObj updateBaseUser(BaseUserVo baseUserVo) {
        return baseUserService.updateBaseUser(baseUserVo);
    }

    /**
     * 删除
     */
    @RequestMapping("/deleteBaseUser")
    public ResultObj deleteBaseUser(Integer id,String avatarpath) {
        return baseUserService.deleteBaseUser(id,avatarpath);
    }

    /**
     * 批量删除
     */
    @RequestMapping("/batchDeleteBaseUser")
    public ResultObj batchDeleteBaseUser(BaseUserVo baseUserVo) {
        return baseUserService.batchDeleteBaseUser(baseUserVo);
    }

    /**
     * 重置用户密码
     */
    @RequestMapping("/resetPwd")
    public ResultObj resetPwd(Integer id) {
        try {
            BaseUser baseUser =new BaseUser();
            baseUser.setId(id);
            String salt= IdUtil.simpleUUID().toUpperCase();
            baseUser.setSalt(salt);//设置盐
            baseUser.setPassword(new Md5Hash(Constast.USER_DEFAULT_PWD, salt, 2).toString());//设置密码
            this.baseUserService.updateById(baseUser);
            return ResultObj.RESET_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.RESET_ERROR;
        }
    }
}
