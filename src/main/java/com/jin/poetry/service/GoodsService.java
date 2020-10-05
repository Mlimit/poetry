package com.jin.poetry.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Goods;
import com.jin.poetry.vo.GoodsVo;

/**
 * @author Jin
 */
public interface GoodsService extends IService<Goods> {
    public DataGridView loadAllGoods(GoodsVo goodsVo);

    public ResultObj addGoods(GoodsVo goodsVo);

    public ResultObj updateGoods(GoodsVo goodsVo);

    public ResultObj deleteGoods(Integer id,String imgpath);

    public ResultObj batchDeleteGoods(GoodsVo goodsVo);

}
