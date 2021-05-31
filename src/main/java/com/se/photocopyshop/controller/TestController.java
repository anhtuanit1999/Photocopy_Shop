package com.se.photocopyshop.controller;

import com.se.photocopyshop.entity.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDateTime;

@Controller
@RequestMapping("test")
public class TestController {
    @GetMapping("test")
    public String sayHello() {
        return "customer/index";
    }
}
