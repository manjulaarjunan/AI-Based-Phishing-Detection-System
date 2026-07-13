package com.example.phishing_detection_system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.phishing_detection_system.entity.WebsiteMonitor;
import com.example.phishing_detection_system.service.WebsiteMonitorService;


@Controller
public class WebsiteMonitorController {


@Autowired
private WebsiteMonitorService service;


@GetMapping("/website-monitor")
public String monitorPage()
{

    return "website-monitor";

}


@PostMapping("/scan-website")
public String scanWebsite(
@RequestParam String url,
Model model)
{

    WebsiteMonitor result =
    service.scanWebsite(url);


    model.addAttribute(
    "result",
    result);


    return "website-monitor";

}


}