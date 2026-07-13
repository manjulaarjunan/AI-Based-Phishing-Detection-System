package com.example.phishing_detection_system.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.phishing_detection_system.entity.WebsiteMonitor;


public interface WebsiteMonitorRepository
extends JpaRepository<WebsiteMonitor,Long>{


}