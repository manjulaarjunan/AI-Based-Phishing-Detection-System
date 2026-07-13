package com.example.phishing_detection_system.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.phishing_detection_system.entity.User;
import com.example.phishing_detection_system.repository.ReportRepository;
import com.example.phishing_detection_system.repository.AlertRepository;


@Service
public class DashboardService {


@Autowired
private ReportRepository reportRepo;


@Autowired
private AlertRepository alertRepo;



public long totalScans(User user)
{

return reportRepo.countByUser(user);

}



public long safeCount(User user)
{

return reportRepo.countByUserAndDetectionStatus(
user,
"Safe Website");

}
public long suspiciousCount(User user)
{

return reportRepo.countByUserAndDetectionStatus(
user,
"Suspicious Website");

}


public long phishingCount(User user)
{

return reportRepo.countByUserAndDetectionStatus(
user,
"Phishing Website");

}



public long alertCount(User user)
{

return alertRepo.countByUser(user);

}

}