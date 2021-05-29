package com.se.photocopyshop.rest;


import com.se.photocopyshop.entity.CartDetail;
import com.se.photocopyshop.entity.PhotoMachine;
import com.se.photocopyshop.service.PhotoMachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

public class PhotoMachineController {
    @Autowired
    private PhotoMachineService photoMachineService;

    @RequestMapping("/")
    public String index(Model model){
        List<PhotoMachine> photoMachines= photoMachineService.getAllPhotoMachines();
        model.addAttribute("photoMachine",photoMachines);
        return "index";

    }
    @RequestMapping(value = "add")
    public String addPhotoMachines(Model model){
        model.addAttribute("photoMachine", new PhotoMachine());
        return "addPhotoMachines";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editPhotoMachines(@RequestParam("id") Integer photoMachineId, Model model){
        Optional<PhotoMachine> PhotoMachineEdit = photoMachineService.findPhotoMachineById(photoMachineId);
        PhotoMachineEdit.ifPresent(photoMachine -> model.addAttribute("PhotoMachines",photoMachine));
        return "editPhotoMachines";
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(PhotoMachine photoMachine){
        photoMachineService.savePhotoMachine(photoMachine);
        return "redirect:/";
    }

    @RequestMapping(value = "/delete",method = RequestMethod.GET)
    public String deletePhotoMachine(@RequestParam("id") Integer photoMachineId, Model model){
        photoMachineService.deletePhotoMachine(photoMachineId);
        return "redirect:/";
    }
}
