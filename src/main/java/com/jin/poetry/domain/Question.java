package com.jin.poetry.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

/**
 * @author Jin
 */
@Data
public class Question {
    private Integer id;
    private String topic;
    private Integer cid;
    @TableField(exist = false)
    private String categoryname;
    private String optiona;
    private String optionb;
    private String optionc;
    private String optiond;
    private String answer;
}
