package com.example.phishing_detection_system.service;


import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.phishing_detection_system.entity.WebsiteMonitor;
import com.example.phishing_detection_system.repository.WebsiteMonitorRepository;


@Service
public class WebsiteMonitorService {


@Autowired
private WebsiteMonitorRepository repo;



public WebsiteMonitor scanWebsite(String url)
{


String keyword="None";

String status="Safe";


if(url.contains("password")
|| url.contains("free")
|| url.contains("bank")
|| url.contains("verify"))
{

keyword="Suspicious Keyword";

status="Suspicious";

}


WebsiteMonitor monitor =
new WebsiteMonitor();


monitor.setWebsiteUrl(url);

monitor.setKeywordFound(keyword);

monitor.setStatus(status);

monitor.setScanDate(LocalDateTime.now());


repo.save(monitor);


return monitor;


}

}