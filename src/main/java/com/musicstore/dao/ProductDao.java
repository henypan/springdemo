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
        product1.setProductCondition("New");

        Product product2 = new Product();
        product2.setProductName("Ring");
        product2.setProductCategory("Instrument");
        product2.setProductDescription("This is a description ring");
        product2.setProductPrice(400);
        product2.setUnitInStock(10);
        product2.setProductCondition("New");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        return productList;
    }
}
