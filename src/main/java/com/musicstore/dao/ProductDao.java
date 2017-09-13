package com.musicstore.dao;

import com.musicstore.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private List<Product> productList;

    public List<Product> getProductList() {
        Product product1 = new Product();
        product1.setProductName("Piano");
        product1.setProductCategory("Music");
        product1.setProductDescription("This is a description data");
        product1.setProductPrice(1000);
        product1.setUnitInStock(20);
        productList = new ArrayList<Product>();
        productList.add(product1);
        return productList;
    }
}
