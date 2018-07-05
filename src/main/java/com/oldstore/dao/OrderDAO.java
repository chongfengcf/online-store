package com.oldstore.dao;

import com.oldstore.model.Order;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface OrderDAO {
    int insert(Order record);

    int update(Order record);

    int delete(Integer id);

    Order queryById(Integer id);

    List<Order> queryAll();
}