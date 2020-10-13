package com.jin.poetry.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.poetry.common.*;
import com.jin.poetry.domain.Scenic;
import com.jin.poetry.mapper.ScenicMapper;
import com.jin.poetry.service.ScenicService;
import com.jin.poetry.vo.ScenicVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

@Service
@Transactional
public class ScenicServiceImpl extends ServiceImpl<ScenicMapper, Scenic> implements ScenicService {

    @Autowired
    private ScenicMapper scenicMapper;

    /**
     * 查询
     */
    @Override
    public DataGridView loadAllScenic(ScenicVo scenicVo) {
        IPage<Scenic> scenicIPage=new Page<>(scenicVo.getPage(), scenicVo.getLimit());
        QueryWrapper<Scenic> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq(scenicVo.getId()!=null, "id", scenicVo.getId());
        queryWrapper.like(StringUtils.isNotBlank(scenicVo.getScenicname()), "scenicname", scenicVo.getScenicname());
        this.page(scenicIPage, queryWrapper);
        return new DataGridView(scenicIPage.getTotal(), scenicIPage.getRecords());
    }

    /**
     * 添加
     */
    @Override
    public ResultObj addScenic(ScenicVo scenicVo) {
        try {
            if(scenicVo.getPhotopath()!=null&&scenicVo.getPhotopath().endsWith("_temp")) {
                String newName= AppFileUtils.renameFile(scenicVo.getPhotopath());
                scenicVo.setPhotopath(newName);
            }
            this.save(scenicVo);
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
    public ResultObj updateScenic(ScenicVo scenicVo) {
        try {
            //说明不是默认图片
            if(!(scenicVo.getPhotopath()!=null&&scenicVo.getPhotopath().equals(Constast.IMAGES_DEFAULTGOODSIMG_PNG))) {
                if(scenicVo.getPhotopath().endsWith("_temp")) {
                    String newName= AppFileUtils.renameFile(scenicVo.getPhotopath());
                    scenicVo.setPhotopath(newName);
                    //删除原先的图片
                    String oldPath=this.getById(scenicVo.getId()).getPhotopath();
                    AppFileUtils.removeFileByPath(oldPath);
                }
            }
            this.updateById(scenicVo);
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
    public ResultObj deleteScenic(Integer id,String avatarpath) {
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
    public ResultObj batchDeleteScenic(ScenicVo scenicVo) {
        try {
            Collection<Serializable> idList=new ArrayList<Serializable>();
            for (Integer id : scenicVo.getIds()) {
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
