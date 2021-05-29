package com.se.photocopyshop.service;

import com.se.photocopyshop.entity.PhotoMachine;

import java.util.List;
import java.util.Optional;

public interface PhotoMachineService {

    List<PhotoMachine>  getAllPhotoMachines();
    void savePhotoMachine(PhotoMachine photoMachine);
    void deletePhotoMachine(Integer photoMachineId);
    Optional<PhotoMachine> findPhotoMachineById(Integer photoMachineId);
}
