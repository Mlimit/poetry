package com.jin.poetry.vo;

import com.jin.poetry.domain.User;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class UserVo extends User {

    private static final long serialVersionUID = 1L;

    private Integer[] ids;//接收多个ID

    private Integer page = 1;
    private Integer limit = 10;

}
