package com.jin.poetry.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Article;
import com.jin.poetry.vo.ArticleVo;

public interface ArticleService extends IService<Article> {
    public DataGridView loadAllArticle(ArticleVo articleVo);

    public ResultObj addArticle(ArticleVo articleVo);

    public ResultObj updateArticle(ArticleVo articleVo);

    public ResultObj deleteArticle(Integer id);

    public ResultObj batchDeleteArticle(ArticleVo articleVo);

    public DataGridView loadAllCategoryForSelect();
}
