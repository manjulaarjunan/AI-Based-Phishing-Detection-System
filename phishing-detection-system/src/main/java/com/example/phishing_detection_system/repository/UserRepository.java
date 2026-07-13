package com.example.phishing_detection_system.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.phishing_detection_system.entity.User;


public interface UserRepository 
extends JpaRepository<User, Long> {


User findByUsernameAndPassword
(String username,String password);


}