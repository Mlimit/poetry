package com.jin.poetry.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.poetry.common.Constast;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Article;
import com.jin.poetry.domain.Category;
import com.jin.poetry.mapper.ArticleMapper;
import com.jin.poetry.service.ArticleService;
import com.jin.poetry.service.CategoryService;
import com.jin.poetry.vo.ArticleVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements ArticleService {


    @Autowired
    private CategoryService categoryService;

    @Autowired
    private ArticleMapper articleMapper;

    /**
     * 查询
     */
    @Override
    public DataGridView loadAllArticle(ArticleVo articleVo) {
        IPage<Article> articleIPage = new Page<>(articleVo.getPage(), articleVo.getLimit());
        QueryWrapper<Article> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(articleVo.getCid() != null && articleVo.getCid() != 0, "cid", articleVo.getCid());
        queryWrapper.like(StringUtils.isNotBlank(articleVo.getTitle()), "title", articleVo.getTitle());
        queryWrapper.like(StringUtils.isNotBlank(articleVo.getAuthor()), "author", articleVo.getAuthor());
        this.page(articleIPage, queryWrapper);
        List<Article> records = articleIPage.getRecords();
        for (Article article : records) {
            Category category = this.categoryService.getById(article.getCid());
            if (null != category) {
                article.setCategoryname(category.getCategoryname());
            }
        }
        return new DataGridView(articleIPage.getTotal(), articleIPage.getRecords());
    }

    /**
     * 添加
     */
    @Override
    public ResultObj addArticle(ArticleVo articleVo) {
        try {
            if(articleMapper.getAuthor(articleVo.getUid())!=null){
                articleVo.setAuthor(articleMapper.getAuthor(articleVo.getUid()));
            }else{
                return new ResultObj(Constast.ERROR, "该用户不存在！请检查后重新输入");
            }
            articleVo.setCreatetime(new Date());
            this.save(articleVo);
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
    public ResultObj updateArticle(ArticleVo articleVo) {
        try {
            this.updateById(articleVo);
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
    public ResultObj deleteArticle(Integer id) {
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
    public ResultObj batchDeleteArticle(ArticleVo articleVo) {
        try {
            Collection<Serializable> idList = new ArrayList<Serializable>();
            for (Integer id : articleVo.getIds()) {
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
     * 加载所有类别
     */
    @Override
    public DataGridView loadAllCategoryForSelect() {
        List<Category> list = this.categoryService.list(null);
        return new DataGridView(list);
    }

}
