package com.se.photocopyshop.service;

import com.se.photocopyshop.entity.Cart;

import java.util.List;
import java.util.Optional;

public interface CartService {
    List<Cart> getAllCarts();
    void saveCart(Cart cart);
    void deleteCart(Integer cardId);
    Optional<Cart> findCartById(Integer cardId);
}
