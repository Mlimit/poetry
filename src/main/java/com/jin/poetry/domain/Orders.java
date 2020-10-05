package com.jin.poetry.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = false)
public class Orders {
    private Integer id;
    private String oid;
    private String uid;
    @TableField(exist = false)
    private String username;
    private Double postage;
    private Double price;
    private Integer status;
    private Date createtime;
}
