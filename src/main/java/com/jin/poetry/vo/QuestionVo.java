package com.jin.poetry.vo;

import com.jin.poetry.domain.Question;
import lombok.Data;

@Data
public class QuestionVo extends Question {

    //接收多个ID
    private Integer[] ids;
    private Integer page = 1;
    private Integer limit = 10;
}
