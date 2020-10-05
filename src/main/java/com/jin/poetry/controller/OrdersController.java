package com.jin.poetry.controller;

import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.service.OrdersService;
import com.jin.poetry.vo.OrdersVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrdersController {

    @Autowired
    private OrdersService ordersService;


    /**
     * 查询
     */
    @RequestMapping("/loadAllOrders")
    public DataGridView loadAllOrders(OrdersVo ordersVo) {
        return ordersService.loadAllOrders(ordersVo);
    }

    /**
     * 添加
     */
    @RequestMapping("/addOrders")
    public ResultObj addOrders(OrdersVo ordersVo){
        return ordersService.addOrders(ordersVo);
    }

    /**
     * 更新
     */
    @RequestMapping("/updateOrders")
    public ResultObj updateOrders(OrdersVo ordersVo) {
        return ordersService.updateOrders(ordersVo);
    }

    /**
     * 删除
     */
    @RequestMapping("/deleteOrders")
    public ResultObj deleteOrders(Integer id) {
        return ordersService.deleteOrders(id);
    }

    /**
     * 批量删除
     */
    @RequestMapping("batchDeleteOrders")
    public ResultObj batchDeleteOrders(OrdersVo ordersVo) {
        return ordersService.batchDeleteOrders(ordersVo);
    }

}
