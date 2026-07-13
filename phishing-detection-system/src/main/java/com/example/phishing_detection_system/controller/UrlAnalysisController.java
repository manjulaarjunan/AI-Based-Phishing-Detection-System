package com.example.phishing_detection_system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.phishing_detection_system.service.UrlAnalysisService;


@Controller
public class UrlAnalysisController {


@Autowired
private UrlAnalysisService service;



@GetMapping("/url-analysis")
public String urlPage()
{

return "url-analysis";

}



@PostMapping("/check-url")
public String checkUrl(
@RequestParam String url,
Model model)
{


String result =
service.checkUrl(url);


model.addAttribute(
"result",
result);


model.addAttribute(
"url",
url);


return "url-analysis";


}


}