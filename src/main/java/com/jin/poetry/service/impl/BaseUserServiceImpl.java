package com.jin.poetry.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.poetry.common.AppFileUtils;
import com.jin.poetry.common.Constast;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.BaseUser;
import com.jin.poetry.mapper.BaseUserMapper;
import com.jin.poetry.service.BaseUserService;
import com.jin.poetry.vo.BaseUserVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

@Service
@Transactional
public class BaseUserServiceImpl extends ServiceImpl<BaseUserMapper, BaseUser>  implements BaseUserService {

    @Autowired
    private BaseUserMapper baseUserMapper;

    /**
     * 查询
     */
    @Override
    public DataGridView loadAllBaseUser(BaseUserVo baseUserVo) {
        IPage<BaseUser> userIPage=new Page<>(baseUserVo.getPage(), baseUserVo.getLimit());
        QueryWrapper<BaseUser> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq(baseUserVo.getId()!=null, "id", baseUserVo.getId());
        queryWrapper.like(StringUtils.isNotBlank(baseUserVo.getUsername()), "username", baseUserVo.getUsername());
        queryWrapper.like(StringUtils.isNotBlank(baseUserVo.getMobile()), "mobile", baseUserVo.getMobile());
        this.page(userIPage, queryWrapper);
        return new DataGridView(userIPage.getTotal(), userIPage.getRecords());
    }

    /**
     * 添加
     */
    @Override
    public ResultObj addBaseUser(BaseUserVo baseUserVo) {
        try {
            if(baseUserVo.getAvatarpath()!=null&&baseUserVo.getAvatarpath().endsWith("_temp")) {
                String newName=AppFileUtils.renameFile(baseUserVo.getAvatarpath());
                baseUserVo.setAvatarpath(newName);
            }
            baseUserVo.setRegistertime(new Date());
            this.save(baseUserVo);
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
    public ResultObj updateBaseUser(BaseUserVo baseUserVo) {
        try {
            //说明是不默认图片
            if(!(baseUserVo.getAvatarpath()!=null&&baseUserVo.getAvatarpath().equals(Constast.IMAGES_DEFAULTGOODSIMG_PNG))) {
                if(baseUserVo.getAvatarpath().endsWith("_temp")) {
                    String newName= AppFileUtils.renameFile(baseUserVo.getAvatarpath());
                    baseUserVo.setAvatarpath(newName);
                    //删除原先的图片
                    String oldPath=this.getById(baseUserVo.getId()).getAvatarpath();
                    AppFileUtils.removeFileByPath(oldPath);
                }
            }
            this.updateById(baseUserVo);
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
    public ResultObj deleteBaseUser(Integer id,String avatarpath) {
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
    public ResultObj batchDeleteBaseUser(BaseUserVo baseUserVo) {
        try {
            Collection<Serializable> idList=new ArrayList<Serializable>();
            for (Integer id : baseUserVo.getIds()) {
                idList.add(id);
            }
            this.removeByIds(idList);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

}
