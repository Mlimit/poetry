package com.jin.poetry.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Article;
import com.jin.poetry.domain.Category;
import com.jin.poetry.service.ArticleService;
import com.jin.poetry.service.CategoryService;
import com.jin.poetry.vo.ArticleVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    @Autowired
    private CategoryService categoryService;

    /**
     * 查询
     */
    @RequestMapping("/loadAllArticle")
    public DataGridView loadAllArticle(ArticleVo articleVo) {
        return articleService.loadAllArticle(articleVo);
    }

    /**
     * 添加
     */
    @RequestMapping("/addArticle")
    public ResultObj addArticle(ArticleVo articleVo){
        return articleService.addArticle(articleVo);
    }

    /**
     * 更新
     */
    @RequestMapping("/updateArticle")
    public ResultObj updateArticle(ArticleVo articleVo) {
        return articleService.updateArticle(articleVo);
    }

    /**
     * 删除
     */
    @RequestMapping("/deleteArticle")
    public ResultObj deleteArticle(Integer id) {
        return articleService.deleteArticle(id);
    }

    /**
     * 批量删除
     */
    @RequestMapping("batchDeleteArticle")
    public ResultObj batchDeleteArticle(ArticleVo articleVo) {
        return articleService.batchDeleteArticle(articleVo);
    }

    /**
     * 加载所有类别
     */
    @RequestMapping("/loadAllCategoryForSelect")
    public DataGridView loadAllCategoryForSelect() {
        return articleService.loadAllCategoryForSelect();
    }
}
