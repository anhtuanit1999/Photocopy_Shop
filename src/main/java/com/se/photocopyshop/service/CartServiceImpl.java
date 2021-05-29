package com.se.photocopyshop.service;

import com.se.photocopyshop.dao.CartReponsitory;
import com.se.photocopyshop.entity.Cart;
import com.se.photocopyshop.entity.User;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class CartServiceImpl implements CartService{
    @Autowired
    private CartReponsitory cartReponsitory;

    @Override
    public List<Cart> getAllCarts() {

        return (List<Cart>) cartReponsitory.findAll();
    }

    @Override
    public void saveCart(Cart cart) {
        cartReponsitory.save(cart);
    }

    @Override
    public void deleteCart(Integer cardId) {
        cartReponsitory.deleteById(cardId);
    }

    @Override
    public Optional<Cart> findCartById(Integer cardId) {
        return cartReponsitory.findById(cardId);
    }
}
