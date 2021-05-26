package com.se.photocopyshop.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer {
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/home/admin").setViewName("index");
        registry.addViewController("/home/item/detail").setViewName("Item_detail");
        registry.addViewController("/shopping-cart").setViewName("shoppingcart");
        registry.addViewController("/user").setViewName("profile");
        registry.addViewController("/").setViewName("index-user");
        registry.addViewController("/sanpham").setViewName("tables");
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/home").setViewName("index-user");
        registry.addViewController("/khachhang").setViewName("taikhoan-khachhang");
        WebMvcConfigurer.super.addViewControllers(registry);
    }
}
