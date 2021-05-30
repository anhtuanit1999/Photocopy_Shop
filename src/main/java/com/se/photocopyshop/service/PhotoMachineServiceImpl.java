package com.se.photocopyshop.service;

import com.se.photocopyshop.dao.PhotoMachineReponsitory;
import com.se.photocopyshop.entity.PhotoMachine;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class PhotoMachineServiceImpl implements PhotoMachineService{
    @Autowired
    private PhotoMachineReponsitory photoMachineReponsitory;

    @Override
    public List<PhotoMachine> getAllPhotoMachines() {
        return (List<PhotoMachine>) photoMachineReponsitory.findAll();
    }

    @Override
    public void savePhotoMachine(PhotoMachine photoMachine) {
        photoMachineReponsitory.save(photoMachine);
    }

    @Override
    public void deletePhotoMachine(Integer photoMachineId) {
        photoMachineReponsitory.deleteById(photoMachineId);
    }

    @Override
    public Optional<PhotoMachine> findPhotoMachineById(Integer photoMachineId) {
        return photoMachineReponsitory.findById(photoMachineId);
    }
}
