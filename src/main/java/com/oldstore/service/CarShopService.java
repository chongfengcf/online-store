package com.oldstore.service;

import com.oldstore.model.CarShop;

import java.util.List;

public interface CarShopService {
    int insert(CarShop record);

    int update(CarShop record);

    int delete(Integer id);

    CarShop queryById(Integer id);

    List<CarShop> queryAll();
}
