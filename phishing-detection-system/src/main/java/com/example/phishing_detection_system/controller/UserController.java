package com.example.phishing_detection_system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.HttpSession;


import com.example.phishing_detection_system.entity.User;
import com.example.phishing_detection_system.service.UserService;
import com.example.phishing_detection_system.service.DashboardService;


@Controller
public class UserController {


@Autowired
private UserService service;


@Autowired
private DashboardService dashboardService;



@GetMapping("/")
public String loginPage()
{
    return "login";
}



@GetMapping("/register")
public String registerPage()
{
    return "register";
}



@PostMapping("/register")
public String register(User user)
{

service.register(user);

return "redirect:/";

}



@PostMapping("/login")
public String login(
@RequestParam String username,
@RequestParam String password,
Model model,
HttpSession session)
{


User user =
service.login(username,password);



if(user != null)
{

session.setAttribute(
"loginUser",
user);


return "redirect:/dashboard";

}

else
{

model.addAttribute(
"error",
"Invalid Username or Password");


return "login";

}


}



@GetMapping("/dashboard")
public String dashboard(
Model model,
HttpSession session)
{


User user =
(User)session.getAttribute("loginUser");



if(user == null)
{

return "redirect:/";

}



model.addAttribute(
"total",
dashboardService.totalScans(user));


model.addAttribute(
"safe",
dashboardService.safeCount(user));


model.addAttribute(
"phishing",
dashboardService.phishingCount(user));
model.addAttribute(
"suspicious",
dashboardService.suspiciousCount(user));


model.addAttribute(
"alerts",
dashboardService.alertCount(user));

return "dashboard";

}
@GetMapping("/profile")
public String profile(
Model model,
HttpSession session)
{


User user =
(User)session.getAttribute("loginUser");


if(user == null)
{

return "redirect:/";

}


model.addAttribute(
"user",
user);


return "profile";

}


@GetMapping("/logout")
public String logout(
HttpSession session)
{


session.invalidate();


return "redirect:/";


}


}