package com.example.phishing_detection_system.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.phishing_detection_system.entity.Report;
import com.example.phishing_detection_system.entity.User;
import com.example.phishing_detection_system.repository.ReportRepository;


@Service
public class ReportService {


@Autowired
private ReportRepository repo;



public List<Report> getReports(User user)
{

return repo.findByUser(user);

}


public void saveReport(Report report)
{

repo.save(report);

}


}