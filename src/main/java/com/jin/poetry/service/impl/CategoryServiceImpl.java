package com.jin.poetry.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Category;
import com.jin.poetry.mapper.CategoryMapper;
import com.jin.poetry.service.CategoryService;
import com.jin.poetry.vo.CategoryVo;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

@Service
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category> implements CategoryService {


    /**
     * 查询
     */
    @Override
    public DataGridView loadAllCategory(CategoryVo categoryVo) {
        IPage<Category> categoryIPage=new Page<>(categoryVo.getPage(), categoryVo.getLimit());
        this.page(categoryIPage, null);
        return new DataGridView(categoryIPage.getTotal(), categoryIPage.getRecords());
    }

    /**
     * 添加
     */
    @Override
    public ResultObj addCategory(CategoryVo categoryVo) {
        try {
            this.save(categoryVo);
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
    public ResultObj updateCategory(CategoryVo categoryVo) {
        try {
            this.updateById(categoryVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (DataIntegrityViolationException e){
            e.printStackTrace();
            return ResultObj.UPDATE_EXIST_ERROR;
        }
        catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除
     */
    @Override
    public ResultObj deleteCategory(Integer id) {
        try {
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
    public ResultObj batchDeleteCategory(CategoryVo categoryVo) {
        try {
            Collection<Serializable> idList=new ArrayList<Serializable>();
            for (Integer id : categoryVo.getIds()) {
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
