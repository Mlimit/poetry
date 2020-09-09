package com.jin.poetry.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jin.poetry.domain.Article;
import com.jin.poetry.domain.BaseUser;
import com.jin.poetry.vo.ArticleVo;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ArticleMapper extends BaseMapper<Article> {

    @Select("select username from base_user where id =#{id}")
    public String getAuthor(Integer id);
}
