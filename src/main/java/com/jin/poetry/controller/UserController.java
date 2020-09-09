package com.jin.poetry.controller;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jin.poetry.domain.User;
import com.jin.poetry.vo.UserVo;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jin.poetry.common.Constast;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.PinyinUtils;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.service.UserService;

import cn.hutool.core.util.IdUtil;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;


    /**
     * 用户全查询
     */
    @RequestMapping("loadAllUser")
    public DataGridView loadAllUser(UserVo userVo) {
        IPage<User> page=new Page<>(userVo.getPage(), userVo.getLimit());
        QueryWrapper<User> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq(StringUtils.isNotBlank(userVo.getName()), "loginname", userVo.getName()).or().eq(StringUtils.isNotBlank(userVo.getName()), "name", userVo.getName());
        queryWrapper.eq("type", Constast.USER_TYPE_NORMAL);//查询系统用户
        this.userService.page(page, queryWrapper);

        System.out.println(userService.getClass().getSimpleName());
        List<User> list = page.getRecords();
        return new DataGridView(page.getTotal(), list);

    }


    /**
     * 根据部门ID查询用户
     */
    @RequestMapping("loadUsersByDeptId")
    public DataGridView loadUsersByDeptId(Integer deptid) {
        QueryWrapper<User> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq(deptid!=null, "deptid", deptid);
        queryWrapper.eq("available", Constast.AVAILABLE_TRUE);
        queryWrapper.eq("type", Constast.USER_TYPE_NORMAL);
        List<User> list = this.userService.list(queryWrapper);
        return new DataGridView(list);
    }


    /**
     * 把用户名转成拼音
     */
    @RequestMapping("changeChineseToPinyin")
    public Map<String,Object> changeChineseToPinyin(String username){
        Map<String,Object> map=new HashMap<>();
        if(null!=username) {
            map.put("value", PinyinUtils.getPingYin(username));
        }else {
            map.put("value", "");
        }
        return map;
    }

    /**
     * 添加用户
     */
    @RequestMapping("addUser")
    public ResultObj addUser(UserVo userVo) {
        try {
            userVo.setType(Constast.USER_TYPE_NORMAL);//设置类型
            String salt=IdUtil.simpleUUID().toUpperCase();
            userVo.setSalt(salt);//设置盐
            userVo.setPwd(new Md5Hash(Constast.USER_DEFAULT_PWD, salt, 2).toString());//设置密码
            this.userService.save(userVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }


    /**
     * 根据用户ID查询一个用户
     */
    @RequestMapping("loadUserById")
    public DataGridView loadUserById(Integer id) {
        return new DataGridView(this.userService.getById(id));
    }

    /**
     * 修改用户
     */
    @RequestMapping("updateUser")
    public ResultObj updateUser(UserVo userVo) {
        try {
            this.userService.updateById(userVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除用户
     */
    @RequestMapping("deleteUser")
    public ResultObj deleteUser(Integer id) {
        try {
            this.userService.removeById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }
    /**
     * 重置用户密码
     */
    @RequestMapping("resetPwd")
    public ResultObj resetPwd(Integer id) {
        try {
            User User =new User();
            User.setId(id);
            String salt=IdUtil.simpleUUID().toUpperCase();
            User.setSalt(salt);//设置盐
            User.setPwd(new Md5Hash(Constast.USER_DEFAULT_PWD, salt, 2).toString());//设置密码
            this.userService.updateById(User);
            return ResultObj.RESET_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.RESET_ERROR;
        }
    }

    /**
     * 保存用户和角色的关系
     */
    @RequestMapping("saveUserRole")
    public ResultObj saveUserRole(Integer uid,Integer[] ids) {
        try {
            this.userService.saveUserRole(uid,ids);
            return ResultObj.DISPATCH_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DISPATCH_ERROR;
        }

    }
}

