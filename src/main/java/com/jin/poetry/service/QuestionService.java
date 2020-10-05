package com.jin.poetry.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Question;
import com.jin.poetry.vo.QuestionVo;

public interface QuestionService extends IService<Question> {
    public DataGridView loadAllQuestion(QuestionVo questionVo);

    public ResultObj addQuestion(QuestionVo questionVo);

    public ResultObj updateQuestion(QuestionVo questionVo);

    public ResultObj deleteQuestion(Integer id);

    public ResultObj batchDeleteQuestion(QuestionVo questionVo);

    public DataGridView loadAllCategoryForSelect();
}
