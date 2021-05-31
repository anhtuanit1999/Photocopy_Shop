package com.se.photocopyshop.controller;

import com.se.photocopyshop.dao.UserRepository;
import com.se.photocopyshop.entity.User;
import org.apache.xpath.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("taikhoan")
public class UserController {
    private UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping
    public String getAll(Model model) {
        var users = userRepository.findAll();
        model.addAttribute("users", users);
        return "admin/taikhoan-khachhang";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable int id) {
        var user = userRepository.findById(id).get();
        userRepository.delete(user);
        return "redirect:/taikhoan";
    }
    @GetMapping("update/{id}")
    public String update(@PathVariable int id, Model model) {
        var user = userRepository.findById(id).get();
        model.addAttribute("user", user);
        return "redirect:/form-user";
    }

    @PostMapping("add")
    public String add(@ModelAttribute User user, ModelMap modelMap) {
        userRepository.save(user);
        return "redirect:/taikhoan";
    }
}
