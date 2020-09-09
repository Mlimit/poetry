package com.jin.poetry.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jin.poetry.domain.Favor;
import org.apache.ibatis.annotations.Select;

public interface FavorMapper extends BaseMapper<Favor> {

    /**
     * 根据文章id查询赞同数量
     */
    @Select("SELECT count(*) FROM `favor` where aid= ${id} and status=1")
    public Integer getFavorNumberById(Integer id);

    /**
     * 判断用户是否点赞
     */
    @Select("SELECT * FROM `favor` where aid = ${aid} and uid = ${uid}")
    public Favor getFavorStatus(Integer aid, Integer uid);

}
