package com.jin.poetry.vo;

import com.jin.poetry.domain.Favor;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class FavorVo extends Favor {

    private static final long serialVersionUID = 1L;

    private Integer page = 1;
    private Integer limit = 10;

}