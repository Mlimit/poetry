package com.jin.poetry.vo;

import com.jin.poetry.domain.Orders;
import lombok.Data;

/**
 * @author Jin
 */
@Data
public class OrdersVo extends Orders {
    //接收多个ID
    private Integer[] ids;
    private Integer page = 1;
    private Integer limit = 10;
}
