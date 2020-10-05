package com.jin.poetry.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.poetry.common.Constast;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Question;
import com.jin.poetry.domain.Category;
import com.jin.poetry.mapper.QuestionMapper;
import com.jin.poetry.service.QuestionService;
import com.jin.poetry.service.CategoryService;
import com.jin.poetry.vo.QuestionVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Service
public class QuestionServiceImpl extends ServiceImpl<QuestionMapper, Question> implements QuestionService {


    @Autowired
    private CategoryService categoryService;

    @Autowired
    private QuestionMapper questionMapper;

    /**
     * 查询
     */
    @Override
    public DataGridView loadAllQuestion(QuestionVo questionVo) {
        IPage<Question> questionIPage = new Page<>(questionVo.getPage(), questionVo.getLimit());
        QueryWrapper<Question> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(questionVo.getCid() != null && questionVo.getCid() != 0, "cid", questionVo.getCid());
        queryWrapper.like(StringUtils.isNotBlank(questionVo.getTopic()), "topic", questionVo.getTopic());
        this.page(questionIPage, queryWrapper);
        List<Question> records = questionIPage.getRecords();
        for (Question question : records) {
            Category category = this.categoryService.getById(question.getCid());
            if (null != category) {
                question.setCategoryname(category.getCategoryname());
            }
        }
        return new DataGridView(questionIPage.getTotal(), questionIPage.getRecords());
    }

    /**
     * 添加
     */
    @Override
    public ResultObj addQuestion(QuestionVo questionVo) {
        try {
            this.save(questionVo);
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
    public ResultObj updateQuestion(QuestionVo questionVo) {
        try {
            this.updateById(questionVo);
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
    public ResultObj deleteQuestion(Integer id) {
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
    public ResultObj batchDeleteQuestion(QuestionVo questionVo) {
        try {
            Collection<Serializable> idList = new ArrayList<Serializable>();
            for (Integer id : questionVo.getIds()) {
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
