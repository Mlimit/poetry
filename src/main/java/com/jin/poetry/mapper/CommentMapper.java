package com.jin.poetry.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jin.poetry.domain.Comment;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;


@Repository
public interface CommentMapper extends BaseMapper<Comment> {

    @Select("SELECT count(*) FROM `comment` where aid= ${id}")
    public Integer getCommentNumberById(Integer id);

    @Select("select id from user where username='${reviewer}'")
    public Integer getReviewerId(String reviewer);

    @Select("select id from article where title='${title}'")
    public Integer getArticleId(String title);
}
