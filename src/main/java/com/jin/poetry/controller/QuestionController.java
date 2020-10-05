package com.jin.poetry.controller;

import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.service.QuestionService;
import com.jin.poetry.service.CategoryService;
import com.jin.poetry.vo.QuestionVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private CategoryService categoryService;

    /**
     * 查询
     */
    @RequestMapping("/loadAllQuestion")
    public DataGridView loadAllQuestion(QuestionVo questionVo) {
        return questionService.loadAllQuestion(questionVo);
    }

    /**
     * 添加
     */
    @RequestMapping("/addQuestion")
    public ResultObj addQuestion(QuestionVo questionVo){
        return questionService.addQuestion(questionVo);
    }

    /**
     * 更新
     */
    @RequestMapping("/updateQuestion")
    public ResultObj updateQuestion(QuestionVo questionVo) {
        return questionService.updateQuestion(questionVo);
    }

    /**
     * 删除
     */
    @RequestMapping("/deleteQuestion")
    public ResultObj deleteQuestion(Integer id) {
        return questionService.deleteQuestion(id);
    }

    /**
     * 批量删除
     */
    @RequestMapping("batchDeleteQuestion")
    public ResultObj batchDeleteQuestion(QuestionVo questionVo) {
        return questionService.batchDeleteQuestion(questionVo);
    }

    /**
     * 加载所有类别
     */
    @RequestMapping("question/loadAllCategoryForSelect")
    public DataGridView loadAllCategoryForSelect() {
        return questionService.loadAllCategoryForSelect();
    }
}
