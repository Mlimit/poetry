package com.jin.poetry.domain;

import lombok.Data;

import java.util.Date;

/**
 * @author Jin
 */
@Data
public class Goods {
    private Integer id;
    private String imgpath;
    private String pname;
    private Double price;
    private boolean status;
    private Date createtime;
}
