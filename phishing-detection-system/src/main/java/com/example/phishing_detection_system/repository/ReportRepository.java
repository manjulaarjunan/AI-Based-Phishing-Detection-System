package com.example.phishing_detection_system.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.phishing_detection_system.entity.Report;
import com.example.phishing_detection_system.entity.User;


public interface ReportRepository 
extends JpaRepository<Report,Long>{


List<Report> findByUser(User user);


long countByUser(User user);


long countByDetectionStatus(
String status);



long countByUserAndDetectionStatus(
User user,
String status);


}