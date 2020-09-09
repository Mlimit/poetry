package com.jin.poetry.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Category;
import com.jin.poetry.vo.CategoryVo;

public interface CategoryService extends IService<Category> {
    
    public DataGridView loadAllCategory(CategoryVo categoryVo);

    public ResultObj addCategory(CategoryVo categoryVo);

    public ResultObj updateCategory(CategoryVo categoryVo);

    public ResultObj deleteCategory(Integer id);

    public ResultObj batchDeleteCategory(CategoryVo categoryVo);
    
}
