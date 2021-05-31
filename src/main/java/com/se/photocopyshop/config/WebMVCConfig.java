package com.se.photocopyshop.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer {
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
//        registry.addViewController("home").setViewName("/customer-page/index");
//        registry.addViewController("").setViewName("/customer-page/index");
//
//        registry.addViewController("item-detail").setViewName("/customer/item_detail");
//        registry.addViewController("profile/customer").setViewName("/customer/profile-cus");
//        registry.addViewController("cart").setViewName("/customer/shoppingcart");
//
//
//        registry.addViewController("sanpham").setViewName("/admin/tables");
//        registry.addViewController("taikhoan").setViewName("/admin/taikhoan-khachhang");
//        registry.addViewController("home/admin").setViewName("/admin/home");
//        registry.addViewController("login").setViewName("login");
//        registry.addViewController("profile/admin").setViewName("/admin/profile");
//        registry.addViewController("form-user").setViewName("/admin/form-user");
        WebMvcConfigurer.super.addViewControllers(registry);
    }
}
