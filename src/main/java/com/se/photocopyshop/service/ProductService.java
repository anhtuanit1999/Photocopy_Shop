package com.se.photocopyshop.service;

import com.se.photocopyshop.entity.Product;

import java.util.List;
import java.util.Optional;

public interface ProductService {
    List<Product> getAllProducts();
    void saveProduct(Product product);
    void deleteProduct(Integer productId);
    Optional<Product> findProductById(Integer productId);
}
