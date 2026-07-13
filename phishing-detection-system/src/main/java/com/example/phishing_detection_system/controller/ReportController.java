package com.example.phishing_detection_system.controller;


import jakarta.servlet.http.HttpSession;

import com.example.phishing_detection_system.entity.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.phishing_detection_system.service.ReportService;


@Controller
public class ReportController {


@Autowired
private ReportService service;



@GetMapping("/reports")
public String viewReports(
Model model,
HttpSession session)
{


User user =
(User) session.getAttribute("loginUser");


model.addAttribute(
"reports",
service.getReports(user));


return "reports";

}


}