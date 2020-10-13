package com.jin.poetry.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jin.poetry.domain.User;
import org.apache.ibatis.annotations.Select;

public interface UserMapper extends BaseMapper<User> {

    @Select("select * from user where id=#{id}")
    public User getUser(Integer id);
}
