package com.se.photocopyshop.service;

import com.se.photocopyshop.dao.UserReponsitory;
import com.se.photocopyshop.entity.User;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class UserServiceImpl implements UserService{
    @Autowired
    private UserReponsitory userReponsitory;

    @Override
    public List<User> getAllUser() {

        return (List<User>) userReponsitory.findAll();
    }

    @Override
    public void saveUser(User user) {
        userReponsitory.save(user);
    }

    @Override
    public void deleteUser(Integer userId) {
        userReponsitory.deleteById(userId);
    }

    @Override
    public Optional<User> finUserById(Integer userId) {

        return userReponsitory.findById(userId);
    }
}
