package com.jin.poetry.controller;

import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.service.FavorService;
import com.jin.poetry.vo.FavorVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FavorController {
    
    @Autowired
    private FavorService favorService;

    /**
     * 查询
     */
    @RequestMapping("/loadAllFavor")
    public DataGridView loadAllFavor(FavorVo favorVo) {
        return favorService.loadAllFavor(favorVo);
    }

    /**
     * 点赞与取消点赞
     */
    @RequestMapping("/addOrCencelFavor")
    public ResultObj addOrCencelFavor(FavorVo favorVo) {
        return favorService.addOrCencelFavor(favorVo);
    }


    /**
     * 根据文章ID查询点赞数
     */
    @RequestMapping("/getFavorNumberById")
    public Integer getFavorNumberById(Integer id) {
        return favorService.getFavorNumberById(id);
    }

    /**
     * 根据文章id和用户id查询点赞状态
     */
    @RequestMapping("/getFavorStatus")
    public Integer getFavorStatus(Integer aid, Integer uid) {
        return favorService.getFavorStatus(aid, uid);
    }
}
