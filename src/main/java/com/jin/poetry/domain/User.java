package com.jin.poetry.domain;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.experimental.Accessors;


@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ToString
public class User implements Serializable {

    private Integer id;
    private String username;
    @JsonIgnore
    private String password;
    private Boolean sex;
    private String mobile;
    private String signature;
    private String address;
    @TableField("register_time")
    private Date registertime;
    @TableField("avatar_path")
    private String avatarpath;
    @JsonIgnore
    private String salt;
    @JsonIgnore
    private String loginname;

    /**
     * 用户类型[0超级管理员1，管理员，2普通用户]
     */
    @JsonIgnore
    private Integer type;

}
