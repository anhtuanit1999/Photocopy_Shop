package com.se.photocopyshop.service;

import com.se.photocopyshop.dao.UserRepository;
import com.se.photocopyshop.entity.MyUserPrincipal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailService implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        var user = userRepository.findUserByEmail(email);
        if(user == null) throw new UsernameNotFoundException(email);
        return new MyUserPrincipal(user);
    }
}
