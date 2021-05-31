package com.se.photocopyshop.rest;

import com.se.photocopyshop.dao.ProductRepository;
import com.se.photocopyshop.entity.ProductCategory;
import com.se.photocopyshop.entity.Test;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping("productcategory")
public class ProductCategoryRestController {
    private ProductRepository productRepository;

    public ProductCategoryRestController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping
    public List<ProductCategory> sayHello() {
        return productRepository.findAll();
    }
}
