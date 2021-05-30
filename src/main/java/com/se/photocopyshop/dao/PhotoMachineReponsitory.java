package com.se.photocopyshop.dao;

import com.se.photocopyshop.entity.PhotoMachine;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PhotoMachineReponsitory extends CrudRepository<PhotoMachine, Integer> {
}
