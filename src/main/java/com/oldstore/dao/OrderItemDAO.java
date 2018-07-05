package com.oldstore.dao;

import com.oldstore.model.OrderItem;
import com.oldstore.model.OrderItemKey;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface OrderItemDAO {

    int delete(OrderItemKey key);

    int insert(OrderItem record);

    OrderItem queryById(OrderItemKey key);

    int update(OrderItem record);

    List<OrderItem> queryByOrderId(OrderItemKey key);
}