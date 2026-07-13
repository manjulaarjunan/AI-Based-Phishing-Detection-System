package com.example.phishing_detection_system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpSession;
import com.example.phishing_detection_system.entity.User;
import com.example.phishing_detection_system.entity.AIDetection;
import com.example.phishing_detection_system.service.AIDetectionService;

@Controller
public class AIDetectionController {


@Autowired
private AIDetectionService service;



@GetMapping("/ai-detection")
public String aiPage()
{

    return "ai-detection";

}



@PostMapping("/detect-url")
public String detectUrl(
@RequestParam String url,
Model model,
HttpSession session)
{


User user =
(User) session.getAttribute("loginUser");


if(user == null)
{

return "redirect:/";

}


AIDetection result =
service.detect(url,user);


model.addAttribute(
"result",
result);


return "ai-detection";


}

}