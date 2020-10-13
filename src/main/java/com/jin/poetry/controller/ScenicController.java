package com.jin.poetry.controller;

import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.service.ScenicService;
import com.jin.poetry.vo.ScenicVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ScenicController {

    @Autowired
    private ScenicService scenicService;

    /**
     * 查询
     */
    @RequestMapping("/loadAllScenic")
    public DataGridView loadAllScenic(ScenicVo scenicVo) {
        return scenicService.loadAllScenic(scenicVo);
    }

    /**
     * 添加
     */
    @RequestMapping("/addScenic")
    public ResultObj addScenic(ScenicVo scenicVo) {
        return scenicService.addScenic(scenicVo);
    }

    /**
     * 更新
     */
    @RequestMapping("/updateScenic")
    public ResultObj updateScenic(ScenicVo scenicVo) {
        return scenicService.updateScenic(scenicVo);
    }

    /**
     * 删除
     */
    @RequestMapping("/deleteScenic")
    public ResultObj deleteScenic(Integer id, String photopath) {
        return scenicService.deleteScenic(id, photopath);
    }

    /**
     * 批量删除
     */
    @RequestMapping("/batchDeleteScenic")
    public ResultObj batchDeleteScenic(ScenicVo scenicVo) {
        return scenicService.batchDeleteScenic(scenicVo);
    }

}
