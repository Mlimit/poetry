package com.jin.poetry.controller;

import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.service.GoodsService;
import com.jin.poetry.vo.GoodsVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GoodsController {

    @Autowired
    private GoodsService goodsService;


    /**
     * 查询
     */
    @RequestMapping("/loadAllGoods")
    public DataGridView loadAllGoods(GoodsVo goodsVo) {
        return goodsService.loadAllGoods(goodsVo);
    }

    /**
     * 添加
     */
    @RequestMapping("/addGoods")
    public ResultObj addGoods(GoodsVo goodsVo){
        return goodsService.addGoods(goodsVo);
    }

    /**
     * 更新
     */
    @RequestMapping("/updateGoods")
    public ResultObj updateGoods(GoodsVo goodsVo) {
        return goodsService.updateGoods(goodsVo);
    }

    /**
     * 删除
     */
    @RequestMapping("/deleteGoods")
    public ResultObj deleteGoods(Integer id,String imgpath) {
        return goodsService.deleteGoods(id,imgpath);
    }

    /**
     * 批量删除
     */
    @RequestMapping("batchDeleteGoods")
    public ResultObj batchDeleteGoods(GoodsVo goodsVo) {
        return goodsService.batchDeleteGoods(goodsVo);
    }

}
