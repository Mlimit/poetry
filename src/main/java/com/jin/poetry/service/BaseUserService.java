package com.jin.poetry.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.BaseUser;
import com.jin.poetry.vo.ArticleVo;
import com.jin.poetry.vo.BaseUserVo;

import java.util.Date;

public interface BaseUserService extends IService<BaseUser> {

    public DataGridView loadAllBaseUser(BaseUserVo baseUserVo);

    public ResultObj addBaseUser(BaseUserVo baseUserVo);

    public ResultObj updateBaseUser(BaseUserVo baseUserVo);

    public ResultObj deleteBaseUser(Integer id,String avatarpath);

    public ResultObj batchDeleteBaseUser(BaseUserVo baseUserVo);

}
