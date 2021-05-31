package com.se.photocopyshop.controller;

import com.se.photocopyshop.dao.UserRepository;
import com.se.photocopyshop.entity.User;
import org.apache.xpath.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping
public class UserController {
    private UserRepository userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("user")
    public String home() {
        return "admin-page/index";
    }

    @GetMapping("taikhoan-khachhang")
    public String getAll(HttpSession session) {
        var users = userRepository.findAll();
        session.setAttribute("users", users);
        return "admin-page/taikhoan-khachhang";
    }

    @GetMapping("user/delete/{id}")
    public String delete(@PathVariable int id) {
        var user = userRepository.findById(id).get();
        userRepository.delete(user);
        return "redirect:/taikhoan-khachhang";
    }
    @GetMapping("update/{id}")
    public String update(@PathVariable int id, Model model) {
        var user = userRepository.findById(id).get();
        model.addAttribute("user", user);
        return "redirect:/form-user";
    }

    @PostMapping("user/save")
    public String save(HttpServletRequest request) {
        User user = new User();
        user.setEmail(request.getParameter("email"));
        user.setPwd(passwordEncoder.encode(request.getParameter("pwd")));
        user.setFullName(request.getParameter("fullName"));
        user.setAddress(request.getParameter("address"));
        user.setPhone(request.getParameter("phone"));
        user.setRole(request.getParameter("role"));
        userRepository.save(user);
        return "redirect:/taikhoan-khachhang";
    }

    @GetMapping("addform")
    public String add(HttpServletRequest request, HttpSession session) {
        User user = (User) request.getAttribute("userUpdate");
        if (user != null) session.setAttribute("userUpdate", user);
        return "admin-page/form-user";
    }

    @GetMapping("addform/{id}")
    public String add(@PathVariable int id, HttpSession session) {
        var user = userRepository.findById(id).get();
        session.setAttribute("userUpdate", user);
        return "redirect:/addform";
    }
}
