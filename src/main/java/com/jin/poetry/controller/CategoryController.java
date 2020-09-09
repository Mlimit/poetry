package com.jin.poetry.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jin.poetry.common.Constast;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Category;
import com.jin.poetry.service.CategoryService;
import com.jin.poetry.vo.CategoryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    /**
     * 查询
     */
    @RequestMapping("/loadAllCategory")
    public DataGridView loadAllCategory(CategoryVo categoryVo) {
        return categoryService.loadAllCategory(categoryVo);
    }

    /**
     * 添加
     */
    @RequestMapping("/addCategory")
    public ResultObj addCategory(CategoryVo categoryVo){
        return categoryService.addCategory(categoryVo);
    }

    /**
     * 更新
     */
    @RequestMapping("/updateCategory")
    public ResultObj updateCategory(CategoryVo categoryVo) {
        return categoryService.updateCategory(categoryVo);
    }

    /**
     * 删除
     */
    @RequestMapping("/deleteCategory")
    public ResultObj deleteCategory(Integer id) {
        return categoryService.deleteCategory(id);
    }

    /**
     * 批量删除
     */
    @RequestMapping("/batchDeleteCategory")
    public ResultObj batchDeleteCategory(CategoryVo categoryVo) {
        return categoryService.batchDeleteCategory(categoryVo);
    }

}
