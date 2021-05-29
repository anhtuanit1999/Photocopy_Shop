package com.se.photocopyshop.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer {
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/home").setViewName("/customer/index");
        registry.addViewController("/").setViewName("/customer/index");
        registry.addViewController("/home/admin").setViewName("/admin/home");
        registry.addViewController("/sanpham").setViewName("/admin/tables");
        registry.addViewController("/taikhoan").setViewName("/admin/taikhoan-khachhang");
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/item-detail").setViewName("/customer/item_detail");
        registry.addViewController("/profile/admin").setViewName("/admin/profile");
        registry.addViewController("/profile/customer").setViewName("/customer/profile-cus");
        registry.addViewController("/cart").setViewName("/customer/shoppingcart");
        registry.addViewController("/error404").setViewName("error-404");
        registry.addViewController("/error500").setViewName("error-500");
        WebMvcConfigurer.super.addViewControllers(registry);
    }
}
