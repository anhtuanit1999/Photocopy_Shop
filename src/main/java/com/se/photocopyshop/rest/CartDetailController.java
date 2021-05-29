package com.se.photocopyshop.rest;


import com.se.photocopyshop.entity.CartDetail;
import com.se.photocopyshop.service.CartDetailSerice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

public class CartDetailController {
    @Autowired
    private CartDetailSerice cartDetailSerice;

    @RequestMapping("/")
    public String index(Model model){
        List<CartDetail> cartDetails= cartDetailSerice.getAllCartDetail();
        model.addAttribute("cartDetail",cartDetails);
        return "index";

    }
    @RequestMapping(value = "add")
    public String addCartDetail(Model model){
        model.addAttribute("cartDetail", new CartDetail());
        return "addCartDetail";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editCartDetail(@RequestParam("id") Integer cartDetailId, Model model){
        Optional<CartDetail> cartDetailEdit = cartDetailSerice.findCartDetailById(cartDetailId);
        cartDetailEdit.ifPresent(cartDetail -> model.addAttribute("CartDetail",cartDetail));
        return "editCartDetail";
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(CartDetail cartDetail){
        cartDetailSerice.saveCartDetail(cartDetail);
        return "redirect:/";
    }

    @RequestMapping(value = "/delete",method = RequestMethod.GET)
    public String deleteCartDetail(@RequestParam("id") Integer cartDetailId, Model model){
        cartDetailSerice.deleteCartDetail(cartDetailId);
        return "redirect:/";
    }
}
