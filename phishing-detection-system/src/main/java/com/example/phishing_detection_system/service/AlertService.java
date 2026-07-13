package com.example.phishing_detection_system.service;


import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.phishing_detection_system.entity.Alert;
import com.example.phishing_detection_system.repository.AlertRepository;


@Service
public class AlertService {


@Autowired
private AlertRepository repo;



public Alert createAlert(String url)
{

Alert alert = new Alert();


String message;
String level;



if(url.contains("@")
|| url.contains("login")
|| url.contains("verify")
|| url.contains("bank"))
{

message =
"Warning! Phishing Website Detected";

level="HIGH";

}


else if(url.contains("free")
|| url.length()>50)
{

message =
"Suspicious Website Found";

level="MEDIUM";

}


else
{

message =
"Website is Safe";

level="LOW";

}



alert.setWebsiteUrl(url);

alert.setAlertMessage(message);

alert.setThreatLevel(level);

alert.setAlertDate(
LocalDateTime.now());


repo.save(alert);


return alert;

}


}