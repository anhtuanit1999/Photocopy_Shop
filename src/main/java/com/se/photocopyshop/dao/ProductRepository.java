package com.se.photocopyshop.dao;

import com.se.photocopyshop.entity.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<ProductCategory, Integer> {
}
