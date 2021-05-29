package com.se.photocopyshop.service;

import com.se.photocopyshop.entity.CartDetail;

import java.util.List;
import java.util.Optional;

public interface CartDetailSerice {
    List<CartDetail> getAllCartDetail();
    void saveCartDetail(CartDetail cartDetail);
    void deleteCartDetail(Integer cartDetailId);
    Optional<CartDetail> findCartDetailById(Integer cartDeatilId);
}
