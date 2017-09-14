package com.musicstore.controller;

import com.musicstore.dao.ProductDao;
import com.musicstore.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/productList")
    public String getProductList(Model model) {
        ProductDao productDao = new ProductDao();
        List<Product> products = productDao.getProductList();
        model.addAttribute("products",products);
        return "productList";
    }
}
