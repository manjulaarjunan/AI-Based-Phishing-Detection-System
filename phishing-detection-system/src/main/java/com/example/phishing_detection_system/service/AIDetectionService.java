package com.example.phishing_detection_system.service;


import java.time.LocalDateTime;
import com.example.phishing_detection_system.entity.Report;
import com.example.phishing_detection_system.entity.User;
import com.example.phishing_detection_system.repository.ReportRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.phishing_detection_system.entity.Alert;
import com.example.phishing_detection_system.repository.AlertRepository;

import com.example.phishing_detection_system.entity.AIDetection;
import com.example.phishing_detection_system.repository.AIDetectionRepository;


@Service
public class AIDetectionService {


@Autowired
private AIDetectionRepository repo;
@Autowired
private ReportRepository reportRepo;
@Autowired
private AlertRepository alertRepo;



public AIDetection detect(String url, User user)
{

int score=0;



if(url.length()>50)
{
score+=30;
}


if(url.contains("@"))
{
score+=30;
}


if(url.contains("login")
|| url.contains("verify")
|| url.contains("bank"))
{
score+=40;
}



String result;


if(score>=60)
{

result="Phishing Website";

}

else if(score>=30)
{

result="Suspicious Website";

}

else
{

result="Safe Website";

}



AIDetection ai=new AIDetection();


ai.setWebsiteUrl(url);

ai.setRiskScore(score);

ai.setPrediction(result);

ai.setDetectionDate(LocalDateTime.now());


repo.save(ai);
Report report = new Report();


report.setWebsiteUrl(url);

report.setDetectionStatus(result);


if(result.equals("Phishing Website"))
{
    report.setThreatLevel("HIGH");
}
else if(result.equals("Suspicious Website"))
{
    report.setThreatLevel("MEDIUM");
}
else
{
    report.setThreatLevel("LOW");
}


report.setReportDate(
LocalDateTime.now());


report.setUser(user);   // important


reportRepo.save(report);
if(result.equals("Phishing Website"))
{

Alert alert = new Alert();


alert.setWebsiteUrl(url);


alert.setAlertMessage(
"Warning! Phishing Website Detected");


alert.setThreatLevel(
"HIGH");


alert.setAlertDate(
LocalDateTime.now());


alert.setUser(user);


alertRepo.save(alert);

}
return ai;

}

}