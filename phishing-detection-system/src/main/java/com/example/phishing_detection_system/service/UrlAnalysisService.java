package com.example.phishing_detection_system.service;


import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.phishing_detection_system.entity.UrlAnalysis;
import com.example.phishing_detection_system.repository.UrlAnalysisRepository;


@Service
public class UrlAnalysisService {


@Autowired
private UrlAnalysisRepository repo;



public String checkUrl(String url)
{

String result="Safe";


if(url.contains("@")
|| url.contains("verify")
|| url.contains("login")
|| url.length()>75)
{

result="Phishing";

}


UrlAnalysis u=new UrlAnalysis();

u.setWebsiteUrl(url);

u.setStatus(result);

u.setDetectionDate(LocalDateTime.now());


repo.save(u);


return result;


}

}