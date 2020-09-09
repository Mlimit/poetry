package com.jin.poetry.vo;


import com.jin.poetry.domain.Comment;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class CommentVo extends Comment {

    private static final long serialVersionUID = 1L;

    private Integer[] ids;//接收多个ID

    private Integer page = 1;
    private Integer limit = 10;

}