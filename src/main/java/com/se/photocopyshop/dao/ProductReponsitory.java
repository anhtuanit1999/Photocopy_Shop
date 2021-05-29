package com.se.photocopyshop.dao;

import com.se.photocopyshop.entity.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductReponsitory extends CrudRepository<Product, Integer> {
}
