package com.maybank.todo.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.maybank.todo.domain.User;
import com.maybank.todo.dto.UserRegistrationDto;


public interface UserService extends UserDetailsService{
 User save(UserRegistrationDto registrationDto);
}
