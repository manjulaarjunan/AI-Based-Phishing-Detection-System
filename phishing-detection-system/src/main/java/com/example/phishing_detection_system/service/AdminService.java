package com.example.phishing_detection_system.service;

import com.example.phishing_detection_system.entity.Alert;
import com.example.phishing_detection_system.repository.AlertRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.phishing_detection_system.entity.Admin;
import com.example.phishing_detection_system.repository.AdminRepository;

import com.example.phishing_detection_system.entity.Report;
import com.example.phishing_detection_system.repository.ReportRepository;

import java.util.List;
import com.example.phishing_detection_system.entity.User;
import com.example.phishing_detection_system.repository.UserRepository;


@Service
public class AdminService {
	@Autowired
	private AlertRepository alertRepo;
	@Autowired
	private ReportRepository reportRepo;
@Autowired
private AdminRepository repo;
@Autowired
private UserRepository userRepo;
public List<Alert> getAllAlerts()
{

return alertRepo.findAll();

}
public List<Report> getAllReports()
{

return reportRepo.findAll();

}
public List<User> getAllUsers()
{

return userRepo.findAll();

}



public Admin login(
String username,
String password)
{


return repo.findByUsernameAndPassword(
username,
password);

}
public void deleteUser(Long id)
{

userRepo.deleteById(id);

}
public void deleteReport(Long id)
{

reportRepo.deleteById(id);

}
public void deleteAlert(Long id)
{

alertRepo.deleteById(id);

}
public long totalUsers()
{

return userRepo.count();

}


public long totalReports()
{

return reportRepo.count();

}


public long totalAlerts()
{

return alertRepo.count();

}


public long totalPhishing()
{

return reportRepo.countByDetectionStatus(
"Phishing Website");

}

}