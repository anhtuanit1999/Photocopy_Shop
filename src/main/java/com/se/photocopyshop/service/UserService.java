package com.se.photocopyshop.service;

import com.se.photocopyshop.entity.User;

import java.util.List;
import java.util.Optional;

public interface UserService {
    List<User>  getAllUser();
    void saveUser(User user);
    void deleteUser(Integer userId);
    Optional<User> finUserById(Integer userId);
}
