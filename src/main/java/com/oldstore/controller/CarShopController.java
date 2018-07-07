package com.oldstore.controller;

import com.oldstore.model.CarShop;
import com.oldstore.service.CarShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CarShopController {

    @Autowired
    private CarShopService carShopService;

    @RequestMapping("/front/queryCartByUserId")
    public String queryCartByUserId(Integer id, Model model)
    {
        List<CarShop> list = carShopService.queryById(id);
        model.addAttribute("list",list);
        return "cartshop";
    }

    @RequestMapping("/front/addCarShop")
    public String addCarshop(Integer id,Integer articleId)
    {
        CarShop carShop = new CarShop();
        carShop.setFkEcArticleId(articleId);
        carShop.setArticleNum(1);
        carShop.setUserId(id);
        carShopService.insert(carShop);
        return "redirect:/front/queryCartByUserId?id="+id;
    }

    @RequestMapping("/front/deleteCarShop")
    public String deleteCarShop(Integer id, HttpSession session)
    {
        carShopService.delete(id);
        return "redirect:/front/queryCartByUserId?id="+session.getAttribute("userId");
    }
}
