package com.jin.poetry.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jin.poetry.common.AppFileUtils;
import com.jin.poetry.common.Constast;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.User;
import com.jin.poetry.mapper.UserMapper;
import com.jin.poetry.vo.UserVo;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.poetry.service.UserService;

@Service
@Transactional
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
    
    @Override
    public boolean save(User entity) {
        return super.save(entity);
    }

    @Override
    public boolean updateById(User entity) {
        return super.updateById(entity);
    }

    @Override
    public User getById(Serializable id) {
        return super.getById(id);
    }

    @Autowired
    private UserMapper userMapper;

    /**
     * 查询
     */
    @Override
    public DataGridView loadAllUser(UserVo userVo) {
        IPage<User> userIPage=new Page<>(userVo.getPage(), userVo.getLimit());
        QueryWrapper<User> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq(userVo.getId()!=null, "id", userVo.getId());
        queryWrapper.like(StringUtils.isNotBlank(userVo.getUsername()), "username", userVo.getUsername());
        queryWrapper.like(StringUtils.isNotBlank(userVo.getMobile()), "mobile", userVo.getMobile());
        queryWrapper.eq("type", Constast.USER_TYPE_GENERAL);//查询普通用户
        this.page(userIPage, queryWrapper);
        return new DataGridView(userIPage.getTotal(), userIPage.getRecords());
    }

    /**
     * 添加
     */
    @Override
    public ResultObj addUser(UserVo userVo) {
        try {
            if(userVo.getAvatarpath()!=null&&userVo.getAvatarpath().endsWith("_temp")) {
                String newName= AppFileUtils.renameFile(userVo.getAvatarpath());
                userVo.setAvatarpath(newName);
            }
            userVo.setRegistertime(new Date());
            this.save(userVo);
            this.resetPwd(userVo.getId());
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改
     */
    @Override
    public ResultObj updateUser(UserVo userVo) {
        try {
            //说明不是默认图片
            if(!(userVo.getAvatarpath()!=null&&userVo.getAvatarpath().equals(Constast.IMAGES_DEFAULTGOODSIMG_PNG))) {
                if(userVo.getAvatarpath().endsWith("_temp")) {
                    String newName= AppFileUtils.renameFile(userVo.getAvatarpath());
                    userVo.setAvatarpath(newName);
                    //删除原先的图片
                    String oldPath=this.getById(userVo.getId()).getAvatarpath();
                    AppFileUtils.removeFileByPath(oldPath);
                }
            }
            this.updateById(userVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除
     */
    @Override
    public ResultObj deleteUser(Integer id,String avatarpath) {
        try {
            //删除原文件
            AppFileUtils.removeFileByPath(avatarpath);
            this.removeById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 批量删除
     */
    @Override
    public ResultObj batchDeleteUser(UserVo userVo) {
        try {
            Collection<Serializable> idList=new ArrayList<Serializable>();
            for (Integer id : userVo.getIds()) {
                idList.add(id);
            }
            this.removeByIds(idList);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 重置密码
     */
    @Override
    public ResultObj resetPwd(Integer id) {
        try {
            User user = new User();
            user.setId(id);
            String salt = IdUtil.simpleUUID().toUpperCase();
            user.setSalt(salt);//设置盐
            user.setPassword(new Md5Hash(Constast.USER_DEFAULT_PWD, salt, 2).toString());//设置密码
            this.updateById(user);
            return ResultObj.RESET_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.RESET_ERROR;
        }
    }

}
