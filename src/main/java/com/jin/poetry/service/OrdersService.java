package com.jin.poetry.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Orders;
import com.jin.poetry.vo.OrdersVo;

/**
 * @author Jin
 */
public interface OrdersService extends IService<Orders> {
    public DataGridView loadAllOrders(OrdersVo orderVo);

    public ResultObj addOrders(OrdersVo orderVo);

    public ResultObj updateOrders(OrdersVo orderVo);

    public ResultObj deleteOrders(Integer id);

    public ResultObj batchDeleteOrders(OrdersVo orderVo);

}
