package com.se.photocopyshop.rest;

import com.se.photocopyshop.entity.Product;
import com.se.photocopyshop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

public class ProductController {
    @Autowired
    private ProductService productService;

    @RequestMapping("/")
    public String index(Model model){
        List<Product> products = productService.getAllProducts();
        model.addAttribute("product",products);
        return "index";
    }

    @RequestMapping(value = "add")
    public String addUser(Model model){
        model.addAttribute("product", new Product());
        return "addProduct";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editProduct(@RequestParam("id") Integer productId, Model model){
        Optional<Product> productEdit = productService.findProductById(productId);
        productEdit.ifPresent(product -> model.addAttribute("product",product));
        return "editProduct";

    }

    @RequestMapping(value = "save",method = RequestMethod.POST)
    public String save(Product product){
        productService.saveProduct(product);
        return "redirect:/";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String deleteProduct(@RequestParam("id") Integer productId, Model model){
        productService.deleteProduct(productId);
        return "redirect:/";
    }
}
