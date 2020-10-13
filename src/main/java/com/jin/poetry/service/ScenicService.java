package com.jin.poetry.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Scenic;
import com.jin.poetry.vo.ScenicVo;

public interface ScenicService extends IService<Scenic> {
    public DataGridView loadAllScenic(ScenicVo scenicVo);

    public ResultObj addScenic(ScenicVo scenicVo);

    public ResultObj updateScenic(ScenicVo scenicVo);

    public ResultObj deleteScenic(Integer id, String photopath);

    public ResultObj batchDeleteScenic(ScenicVo scenicVo);
}
