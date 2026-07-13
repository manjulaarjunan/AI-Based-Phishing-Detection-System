package com.example.phishing_detection_system.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.phishing_detection_system.entity.Alert;
import com.example.phishing_detection_system.entity.User;


public interface AlertRepository
extends JpaRepository<Alert,Long>{


long countByUser(User user);


}