package com.se.photocopyshop.service;


import com.se.photocopyshop.dao.CartDetailReponsitory;
import com.se.photocopyshop.entity.CartDetail;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class CartDetailServiceImpl implements CartDetailSerice{

    @Autowired
    private CartDetailReponsitory cartDetailReponsitory;

    @Override
    public List<CartDetail> getAllCartDetail() {
        return (List<CartDetail>) cartDetailReponsitory.findAll();
    }

    @Override
    public void saveCartDetail(CartDetail cartDetail) {
        cartDetailReponsitory.save(cartDetail);
    }

    @Override
    public void deleteCartDetail(Integer cartDetailId) {
        cartDetailReponsitory.deleteById(cartDetailId);
    }

    @Override
    public Optional<CartDetail> findCartDetailById(Integer cartDeatilId) {
        return cartDetailReponsitory.findById(cartDeatilId);
    }
}
