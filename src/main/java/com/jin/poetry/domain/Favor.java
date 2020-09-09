package com.jin.poetry.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.util.Date;

@Data
public class Favor {
    private Integer id;
    private Integer aid;
    private Integer uid;
    private Integer status;
    private Date createtime;
    @TableField(exist = false)
    private String favorer;
    @TableField(exist = false)
    private String title;
}
