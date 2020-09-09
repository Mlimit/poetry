package com.jin.poetry.domain;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.util.Date;

@Data
@TableName("base_user")
public class BaseUser {
    private Integer id;
    private String username;
    @JsonIgnore
    private String password;
    private Integer sex;
    private String mobile;
    private String signature;
    private String address;
    @TableField("register_time")
    private Date registertime;
    @TableField("avatar_path")
    private String avatarpath;
    @JsonIgnore
    private String salt;
}