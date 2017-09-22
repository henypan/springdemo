package com.musicstore.dao;

import com.musicstore.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private List<Product> productList;

    public List<Product> getProductList() {
        Product product1 = new Product();
        product1.setProductId("001");
        product1.setProductName("Piano");
        product1.setProductCategory("Music");
        product1.setProductDescription("This is a description data");
        product1.setProductPrice(1000);
        product1.setUnitInStock(20);
        product1.setProductCondition("New");

        Product product2 = new Product();
        product2.setProductId("002");
        product2.setProductName("Ring");
        product2.setProductCategory("Instrument");
        product2.setProductDescription("This is a description ring");
        product2.setProductPrice(400);
        product2.setUnitInStock(10);
        product2.setProductCondition("New");

        Product product3 = new Product();
        product3.setProductId("003");
        product3.setProductName("CD Player");
        product3.setProductCategory("Electric");
        product3.setProductDescription("This is a description ring");
        product3.setProductPrice(300);
        product3.setUnitInStock(2);
        product3.setProductCondition("Used");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);
        return productList;
    }

    public Product getProductById(String productId) throws IOException {
        for (Product product : productList) {
            if (product.getProductId().equals(productId)) {
                return product;
            }
        }
        throw new IOException("No product found");
    }
}
