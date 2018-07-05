package com.oldstore.dao;

import com.oldstore.model.CarShop;
import java.util.List;
import org.springframework.stereotype.Repository;

@Repository
public interface CarShopDAO {
    int insert(CarShop record);

    int update(CarShop record);

    int delete(Integer id);

    CarShop queryById(Integer id);

    List<CarShop> queryAll();
}