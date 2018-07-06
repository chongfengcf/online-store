package com.oldstore.service.impl;

import com.oldstore.dao.CarShopDAO;
import com.oldstore.model.CarShop;
import com.oldstore.service.CarShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CarShopServiceImpl implements CarShopService {
    @Autowired
    private CarShopDAO carshopdao;

    @Override
    public int insert(CarShop record) {
        return carshopdao.insert(record);
    }

    @Override
    public int update(CarShop record) {
        return carshopdao.update(record);
    }

    @Override
    public int delete(Integer id) {
        return carshopdao.delete(id);
    }

    @Override
    public List<CarShop> queryById(Integer id) {
        return carshopdao.queryById(id);
    }

    @Override
    public List<CarShop> queryAll() {
        return carshopdao.queryAll();
    }

}
