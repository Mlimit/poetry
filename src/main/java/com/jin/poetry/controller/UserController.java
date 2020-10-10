package com.jin.poetry.controller;

import cn.hutool.core.util.IdUtil;
import com.jin.poetry.common.Constast;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.User;
import com.jin.poetry.service.UserService;
import com.jin.poetry.vo.UserVo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 查询
     */
    @RequestMapping("/loadAllUser")
    public DataGridView loadAllUser(UserVo userVo) {
        return userService.loadAllUser(userVo);
    }

    /**
     * 添加
     */
    @RequestMapping("/addUser")
    public ResultObj addUser(UserVo userVo) {
        return userService.addUser(userVo);
    }

    /**
     * 更新
     */
    @RequestMapping("/updateUser")
    public ResultObj updateUser(UserVo userVo) {
        return userService.updateUser(userVo);
    }

    /**
     * 删除
     */
    @RequestMapping("/deleteUser")
    public ResultObj deleteUser(Integer id, String avatarpath) {
        return userService.deleteUser(id, avatarpath);
    }

    /**
     * 批量删除
     */
    @RequestMapping("/batchDeleteUser")
    public ResultObj batchDeleteUser(UserVo userVo) {
        return userService.batchDeleteUser(userVo);
    }

    /**
     * 重置用户密码
     */
    @RequestMapping("/resetPwd")
    public ResultObj resetPwd(Integer id) {
        return userService.resetPwd(id);
    }
}
