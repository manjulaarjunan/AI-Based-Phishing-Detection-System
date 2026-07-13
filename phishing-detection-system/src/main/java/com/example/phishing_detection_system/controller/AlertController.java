package com.example.phishing_detection_system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.phishing_detection_system.entity.Alert;
import com.example.phishing_detection_system.service.AlertService;


@Controller
public class AlertController {


@Autowired
private AlertService service;



@GetMapping("/alerts")
public String alertPage()
{

    return "alerts";

}



@PostMapping("/generate-alert")
public String generateAlert(
@RequestParam String url,
Model model)
{


Alert alert =
service.createAlert(url);


model.addAttribute(
"alert",
alert);


return "alerts";


}


}