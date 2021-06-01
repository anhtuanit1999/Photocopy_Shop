package com.se.photocopyshop.controller;

import com.se.photocopyshop.dao.PhotoMachineRepository;
import com.se.photocopyshop.dao.ProductRepository;
import com.se.photocopyshop.entity.PhotoMachine;
import com.se.photocopyshop.entity.ProductCategory;
import com.se.photocopyshop.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = {"home", ""})
public class PhotoMachineController {
    private PhotoMachineRepository photoMachineRepository;
    private ProductRepository categoryMachineRepository;



    public PhotoMachineController(PhotoMachineRepository photoMachineRepository, ProductRepository categoryMachineRepository) {
        this.photoMachineRepository = photoMachineRepository;
        this.categoryMachineRepository = categoryMachineRepository;
    }



    @GetMapping("/list")
    public String getAll(Model model) {
        var photoMachines = photoMachineRepository.findAll();
        model.addAttribute("photoMachines", photoMachines);
        var categoryMachines = categoryMachineRepository.findAll();
        model.addAttribute("categoryMachines", categoryMachines);
        return "admin-page/sanpham";
    }
    @GetMapping("/item-detail")
    public String category(Model model) {

        var categoryMachines = categoryMachineRepository.findAll();
        model.addAttribute("categoryMachines", categoryMachines);
        return "customer/item_detail";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("productId") int theId) {

        // delete the employee
        photoMachineRepository.deleteById(theId);

        // redirect to /employees/list
        return "redirect:/list";

    }
    @PostMapping("/save")
    public String saveProduct(@ModelAttribute("product") PhotoMachine theProduct, ModelMap modelMap) {
        modelMap.addAttribute("product", theProduct);
        photoMachineRepository.save(theProduct);
        return "admin/form-addproduct";
    }
    @GetMapping("/save")
    public String saveProduct(){
        return "admin-page/sanpham";
    }

}
