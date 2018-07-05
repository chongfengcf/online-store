package com.oldstore.service;

import com.oldstore.model.Order;

import java.util.List;

public interface OrderService {
    int insert(Order record);

    int update(Order record);

    int delete(Integer id);

    Order queryById(Integer id);

    List<Order> queryAll();
}
