package com.oldstore.service.impl;

import com.oldstore.dao.OrderItemDAO;
import com.oldstore.model.OrderItem;
import com.oldstore.model.OrderItemKey;
import com.oldstore.service.OrderItemService;
import com.oldstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrderItemServiceImpl implements OrderItemService {
    @Autowired
    private OrderItemDAO orderitemdao;

    @Override
    public int delete(OrderItemKey key) {
        return orderitemdao.delete(key);
    }

    @Override
    public int insert(OrderItem record) {
        return orderitemdao.insert(record);
    }

    @Override
    public OrderItem queryById(OrderItemKey key) {
        return orderitemdao.queryById(key);
    }

    @Override
    public int update(OrderItem record) {
        return orderitemdao.update(record);
    }

    @Override
    public List<OrderItem> queryByOrderId(OrderItemKey key) {
        return orderitemdao.queryByOrderId(key);
    }
}
