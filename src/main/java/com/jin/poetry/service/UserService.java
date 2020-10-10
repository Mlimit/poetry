package com.jin.poetry.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.User;
import com.jin.poetry.vo.UserVo;

public interface UserService extends IService<User> {
    public DataGridView loadAllUser(UserVo userVo);

    public ResultObj addUser(UserVo userVo);

    public ResultObj updateUser(UserVo userVo);

    public ResultObj deleteUser(Integer id, String avatarpath);

    public ResultObj batchDeleteUser(UserVo userVo);

    public ResultObj resetPwd(Integer id);
}
