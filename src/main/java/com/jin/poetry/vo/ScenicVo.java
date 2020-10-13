package com.jin.poetry.vo;

import com.jin.poetry.domain.Scenic;
import lombok.Data;

@Data
public class ScenicVo extends Scenic {
    //接收多个ID
    private Integer[] ids;
    private Integer page = 1;
    private Integer limit = 10;
}
