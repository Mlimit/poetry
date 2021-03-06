package com.jin.poetry.vo;

import com.jin.poetry.domain.Article;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class ArticleVo extends Article {

    private static final long serialVersionUID = 1L;
    //接收多个ID
    private Integer[] ids;
    private Integer page = 1;
    private Integer limit = 10;

}
