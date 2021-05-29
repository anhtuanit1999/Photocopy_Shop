package com.se.photocopyshop.dao;

import com.se.photocopyshop.entity.Cart;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartReponsitory extends CrudRepository<Cart, Integer> {
}
