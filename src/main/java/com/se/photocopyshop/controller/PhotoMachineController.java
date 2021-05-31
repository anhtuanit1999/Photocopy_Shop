package com.se.photocopyshop.controller;

import com.se.photocopyshop.dao.PhotoMachineRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = {"home", ""})
public class PhotoMachineController {
    private PhotoMachineRepository photoMachineRepository;

    public PhotoMachineController(PhotoMachineRepository photoMachineRepository) {
        this.photoMachineRepository = photoMachineRepository;
    }

    @GetMapping
    public String sayHello(Model model) {
        var photoMachines = photoMachineRepository.findAll();
        model.addAttribute("photoMachines", photoMachines);

        return "customer/index";
    }
}
