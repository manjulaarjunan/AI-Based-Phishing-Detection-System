package com.example.phishing_detection_system.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.phishing_detection_system.entity.User;
import com.example.phishing_detection_system.repository.UserRepository;


@Service
public class UserService {


@Autowired
private UserRepository repo;



public void register(User user)
{

repo.save(user);

}



public User login(String username,String password)
{

return repo.findByUsernameAndPassword(
username,password);

}


}