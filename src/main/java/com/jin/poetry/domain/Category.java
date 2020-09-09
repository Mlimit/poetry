package com.jin.poetry.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

@Data
public class Category {
    private Integer id;
    @TableField("category_name")
    private String categoryname;
}
