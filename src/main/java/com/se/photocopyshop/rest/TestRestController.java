package com.se.photocopyshop.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
public class TestRestController {

    @GetMapping("helloo")
    public String sayHell() {
        return "Hello Wordl! Time onm server is " + LocalDateTime.now();
    }
}
