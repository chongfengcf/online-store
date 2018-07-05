package com.oldstore.service.impl;

import com.oldstore.dao.OrderDAO;
import com.oldstore.model.Order;
import com.oldstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDAO orderdao;

    @Override
    public int insert(Order record) {
        return orderdao.insert(record);
    }

    @Override
    public int update(Order record) {
        return orderdao.update(record);
    }

    @Override
    public int delete(Integer id) {
        return orderdao.delete(id);
    }

    @Override
    public Order queryById(Integer id) {
        return orderdao.queryById(id);
    }

    @Override
    public List<Order> queryAll() {
        return orderdao.queryAll();
    }
}
