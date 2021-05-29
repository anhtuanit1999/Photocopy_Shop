package com.se.photocopyshop.dao;

import com.se.photocopyshop.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserReponsitory extends CrudRepository<User , Integer>{

}
