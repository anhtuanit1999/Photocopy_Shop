package com.se.photocopyshop.dao;

import com.se.photocopyshop.entity.CartDetail;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartDetailReponsitory extends CrudRepository<CartDetail, Integer> {
}
