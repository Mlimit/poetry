package com.jin.poetry.vo;

import com.jin.poetry.domain.Category;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
public class CategoryVo extends Category {

private static final long serialVersionUID = 1L;

    private Integer[] ids;//接收多个ID
    private Integer page=1;
    private Integer limit=10;

}
