package com.se.photocopyshop.service;

import com.se.photocopyshop.dao.ProductReponsitory;
import com.se.photocopyshop.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductReponsitory productReponsitory;
    @Override
    public List<Product> getAllProducts() {
        return (List<Product>) productReponsitory.findAll();
    }

    @Override
    public void saveProduct(Product product) {
        productReponsitory.save(product);
    }

    @Override
    public void deleteProduct(Integer productId) {
        productReponsitory.deleteById(productId);
    }

    @Override
    public Optional<Product> findProductById(Integer productId) {
        return productReponsitory.findById(productId);
    }
}
