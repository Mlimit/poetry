package com.jin.poetry.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jin.poetry.domain.Article;
import org.apache.ibatis.annotations.Select;

/**
 * @author Jin
 */
public interface ArticleMapper extends BaseMapper<Article> {

    @Select("select username from base_user where id =#{id}")
    public String getAuthor(Integer id);
}
