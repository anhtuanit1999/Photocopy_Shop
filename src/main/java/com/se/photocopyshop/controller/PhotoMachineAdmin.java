package com.se.photocopyshop.controller;

import com.se.photocopyshop.dao.PhotoMachineRepository;
import com.se.photocopyshop.entity.PhotoMachine;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = {"/sanpham","/home/admin"})
public class PhotoMachineAdmin {
        private PhotoMachineRepository photoMachine;

    public PhotoMachineAdmin(PhotoMachineRepository photoMachine) {
        this.photoMachine = photoMachine;
    }

    @PostMapping("/save")
    public String saveProduct(@ModelAttribute("product") PhotoMachine theProduct, ModelMap modelMap) {
        modelMap.addAttribute("product", theProduct);
        photoMachine.save(theProduct);
        return "/product-addform";
    }
    @GetMapping("/delete")
    public String delete(@RequestParam("productId") int theId) {

        // delete the employee
        photoMachine.deleteById(theId);

        // redirect to /employees/list
        return "redirect:/sanpham";

    }
    @GetMapping
    public String getProduct(Model model) {
        var photoMachines = photoMachine.findAll();
        model.addAttribute("photoMachines", photoMachines);

        return "admin/tables";
    }
}