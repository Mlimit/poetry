package com.jin.poetry.vo;

import com.jin.poetry.domain.Goods;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author Jin
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class GoodsVo extends Goods {

    //接收多个ID
    private Integer[] ids;
    private Integer page = 1;
    private Integer limit = 10;
}
