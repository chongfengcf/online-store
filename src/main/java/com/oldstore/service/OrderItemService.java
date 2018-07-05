package com.oldstore.service;

import com.oldstore.model.OrderItem;
import com.oldstore.model.OrderItemKey;

import java.util.List;

public interface OrderItemService {
    int delete(OrderItemKey key);

    int insert(OrderItem record);

    OrderItem queryById(OrderItemKey key);

    int update(OrderItem record);

    List<OrderItem> queryByOrderId(OrderItemKey key);
}
