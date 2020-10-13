package com.jin.poetry.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.poetry.common.AppFileUtils;
import com.jin.poetry.common.Constast;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Goods;
import com.jin.poetry.mapper.GoodsMapper;
import com.jin.poetry.service.GoodsService;
import com.jin.poetry.vo.GoodsVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

@Service
public class GoodsServiceImpl extends ServiceImpl<GoodsMapper, Goods> implements GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;

    /**
     * 查询
     */
    @Override
    public DataGridView loadAllGoods(GoodsVo goodsVo) {
        IPage<Goods> goodsIPage = new Page<>(goodsVo.getPage(), goodsVo.getLimit());
        QueryWrapper<Goods> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(goodsVo.getId() != null && goodsVo.getId() != 0, "id", goodsVo.getId());
        queryWrapper.like(StringUtils.isNotBlank(goodsVo.getPname()), "pname", goodsVo.getPname());
        this.page(goodsIPage, queryWrapper);
        return new DataGridView(goodsIPage.getTotal(), goodsIPage.getRecords());
    }

    /**
     * 添加
     */
    @Override
    public ResultObj addGoods(GoodsVo goodsVo) {
        try {
            if(goodsVo.getImgpath()!=null&&goodsVo.getImgpath().endsWith("_temp")) {
                String newName= AppFileUtils.renameFile(goodsVo.getImgpath());
                goodsVo.setImgpath(newName);
            }
            goodsVo.setCreatetime(new Date());
            this.save(goodsVo);
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
    public ResultObj updateGoods(GoodsVo goodsVo) {
        //说明不是默认图片
        if(!(goodsVo.getImgpath()!=null&&goodsVo.getImgpath().equals(Constast.IMAGES_DEFAULTGOODSIMG_PNG))) {
            if(goodsVo.getImgpath().endsWith("_temp")) {
                String newName= AppFileUtils.renameFile(goodsVo.getImgpath());
                goodsVo.setImgpath(newName);
                //删除原先的图片
                String oldPath=this.getById(goodsVo.getId()).getImgpath();
                AppFileUtils.removeFileByPath(oldPath);
            }
        }
        try {
            this.updateById(goodsVo);
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
    public ResultObj deleteGoods(Integer id,String imgpath) {
        try {
            //删除原文件
            AppFileUtils.removeFileByPath(imgpath);
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
    public ResultObj batchDeleteGoods(GoodsVo goodsVo) {
        try {
            Collection<Serializable> idList = new ArrayList<Serializable>();
            for (Integer id : goodsVo.getIds()) {
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
