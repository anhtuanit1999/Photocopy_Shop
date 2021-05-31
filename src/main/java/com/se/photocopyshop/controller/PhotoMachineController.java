package com.se.photocopyshop.controller;

import com.se.photocopyshop.dao.PhotoMachineRepository;
import com.se.photocopyshop.dao.ProductRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = {"home", ""})
public class PhotoMachineController {
    private PhotoMachineRepository photoMachineRepository;
    private ProductRepository categoryMachineRepository;



    public PhotoMachineController(PhotoMachineRepository photoMachineRepository, ProductRepository categoryMachineRepository) {
        this.photoMachineRepository = photoMachineRepository;
        this.categoryMachineRepository = categoryMachineRepository;
    }



    @GetMapping
    public String sayHello(Model model) {
        var photoMachines = photoMachineRepository.findAll();
        model.addAttribute("photoMachines", photoMachines);
        var categoryMachines = categoryMachineRepository.findAll();
        model.addAttribute("categoryMachines", categoryMachines);
        return "customer/index";
    }
    @GetMapping("/item-detail")
    public String category(Model model) {

        var categoryMachines = categoryMachineRepository.findAll();
        model.addAttribute("categoryMachines", categoryMachines);
        return "customer/item_detail";
    }

}
