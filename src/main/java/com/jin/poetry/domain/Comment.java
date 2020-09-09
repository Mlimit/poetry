package com.jin.poetry.domain;


import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.util.Date;

@Data
public class Comment {

    private Integer id;
    private Integer uid;
    private Integer aid;
    private String content;
    private Date createtime;
    @TableField(exist = false)
    private String reviewer;
    @TableField(exist = false)
    private String title;
}
