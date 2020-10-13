package com.jin.poetry.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

@Data
public class Scenic {
    private Integer id;
    private String scenicname;
    private String coordinate;
    private String location;
    @TableField("photo_path")
    private String photopath;
    private String pinyin;
    private String content;
    @TableField("like_number")
    private Integer likenumber;
    @TableField("comment_number")
    private Integer commentnumber;
    @TableField("share_number")
    private Integer sharenumber;
    @TableField("hot_number")
    private Integer hotnumber;
}
