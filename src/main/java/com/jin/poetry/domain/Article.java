package com.jin.poetry.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
public class Article {
    private Integer id;
    private Integer uid;
    private String title;
    @TableField(exist = false)
    private String categoryname;
    private Integer cid;
    @TableField(exist = false)
    private String author;
    private String content;
    private Date createtime;
    @TableField("favor_number")
    private Integer favornumber;
    @TableField("comment_number")
    private Integer commentnumber;
    @TableField("collect_number")
    private Integer collectnumber;
}
