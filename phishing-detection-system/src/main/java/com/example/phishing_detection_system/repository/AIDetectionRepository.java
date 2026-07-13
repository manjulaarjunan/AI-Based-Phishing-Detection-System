package com.example.phishing_detection_system.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.phishing_detection_system.entity.AIDetection;


public interface AIDetectionRepository 
extends JpaRepository<AIDetection,Long>{


}