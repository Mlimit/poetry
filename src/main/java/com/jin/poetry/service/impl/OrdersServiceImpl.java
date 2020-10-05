package com.jin.poetry.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Article;
import com.jin.poetry.domain.BaseUser;
import com.jin.poetry.domain.Comment;
import com.jin.poetry.domain.Orders;
import com.jin.poetry.mapper.OrdersMapper;
import com.jin.poetry.service.BaseUserService;
import com.jin.poetry.service.OrdersService;
import com.jin.poetry.vo.OrdersVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Service
public class OrdersServiceImpl extends ServiceImpl<OrdersMapper, Orders> implements OrdersService {

    @Autowired
    private BaseUserService baseUserService;

    @Autowired
    private OrdersMapper ordersMapper;

    /**
     * 查询
     */
    @Override
    public DataGridView loadAllOrders(OrdersVo ordersVo) {
        IPage<Orders> ordersIPage = new Page<>(ordersVo.getPage(), ordersVo.getLimit());
        QueryWrapper<Orders> queryWrapper = new QueryWrapper<>();
//        queryWrapper.eq(ordersVo.getOid() != null && ordersVo.getId() != 0, "oid", ordersVo.getOid());
        queryWrapper.like(StringUtils.isNotBlank(ordersVo.getOid()), "oid", ordersVo.getOid());
        this.page(ordersIPage, queryWrapper);
        List<Orders> records = ordersIPage.getRecords();
        for (Orders orders : records) {
            BaseUser baseUser = this.baseUserService.getById(orders.getUid());
            if (null != baseUser) {
                orders.setUsername(baseUser.getUsername());
            }
        }
        return new DataGridView(ordersIPage.getTotal(), records);
    }

    /**
     * 添加
     */
    @Override
    public ResultObj addOrders(OrdersVo ordersVo) {
        try {
            ordersVo.setCreatetime(new Date());
            this.save(ordersVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改
     */
    @Override
    public ResultObj updateOrders(OrdersVo ordersVo) {
        try {
            this.updateById(ordersVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除
     */
    @Override
    public ResultObj deleteOrders(Integer id) {
        try {
            this.removeById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 批量删除
     */
    @Override
    public ResultObj batchDeleteOrders(OrdersVo ordersVo) {
        try {
            Collection<Serializable> idList = new ArrayList<Serializable>();
            for (Integer id : ordersVo.getIds()) {
                idList.add(id);
            }
            this.removeByIds(idList);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

}
