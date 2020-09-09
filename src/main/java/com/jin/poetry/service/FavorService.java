package com.jin.poetry.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Favor;
import com.jin.poetry.vo.FavorVo;

public interface FavorService extends IService<Favor> {

    public DataGridView loadAllFavor(FavorVo favorVo);

    public ResultObj addOrCencelFavor(FavorVo favorVo);

    public Integer getFavorNumberById(Integer id);

    public Integer getFavorStatus(Integer aid, Integer uid);
}
