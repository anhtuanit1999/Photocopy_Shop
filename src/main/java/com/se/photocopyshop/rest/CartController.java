package com.se.photocopyshop.rest;

import com.se.photocopyshop.entity.Cart;
import com.se.photocopyshop.entity.User;
import com.se.photocopyshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

public class CartController {
    @Autowired
    private CartService cartService;

    @RequestMapping("/")
    public String index(Model model){
        List<Cart> carts= cartService.getAllCarts();
        model.addAttribute("cart",carts);
        return "index";

    }

    @RequestMapping(value = "add")
    public String addCart(Model model){
        model.addAttribute("cart", new Cart());
        return "addCart";
    }
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editCart(@RequestParam("id") Integer cartId, Model model){
        Optional<Cart> cartEdit = cartService.findCartById(cartId);
        cartEdit.ifPresent(cart -> model.addAttribute("cart",cart));
        return "editCart";
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(Cart cart){
        cartService.saveCart(cart);
        return "redirect:/";
    }

    @RequestMapping(value = "/delete",method = RequestMethod.GET)
    public String deleteUser(@RequestParam("id") Integer cartId, Model model){
        cartService.deleteCart(cartId);
        return "redirect:/";
    }

}
