package com.se.photocopyshop.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer {
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("home").setViewName("/customer/trangchu-user");
        registry.addViewController("").setViewName("/customer/index");

        WebMvcConfigurer.super.addViewControllers(registry);
    }
}
