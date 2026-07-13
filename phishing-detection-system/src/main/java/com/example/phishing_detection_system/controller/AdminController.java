package com.example.phishing_detection_system.controller;
import java.util.List;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import com.example.phishing_detection_system.entity.Report;
import com.example.phishing_detection_system.entity.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpSession;

import com.example.phishing_detection_system.entity.Admin;
import com.example.phishing_detection_system.service.AdminService;


@Controller
public class AdminController {


@Autowired
private AdminService service;
@GetMapping("/admin-reports")
public String viewReports(
Model model,
HttpSession session)
{


if(session.getAttribute("adminUser")==null)
{

return "redirect:/admin";

}


List<Report> reports =
service.getAllReports();


model.addAttribute(
"reports",
reports);


return "admin-reports";

}
@GetMapping("/admin-users")
public String viewUsers(
Model model,
HttpSession session)
{


if(session.getAttribute("adminUser")==null)
{

return "redirect:/admin";

}


List<User> users =
service.getAllUsers();


model.addAttribute(
"users",
users);


return "admin-users";


}



@GetMapping("/admin")
public String adminLoginPage()
{

return "admin-login";

}



@PostMapping("/admin-login")
public String adminLogin(
@RequestParam String username,
@RequestParam String password,
Model model,
HttpSession session)
{


Admin admin =
service.login(username,password);



if(admin != null)
{

session.setAttribute(
"adminUser",
admin);


return "redirect:/admin-dashboard";

}

else
{

model.addAttribute(
"error",
"Invalid Admin Login");


return "admin-login";

}


}



@GetMapping("/admin-dashboard")
public String dashboard(
Model model,
HttpSession session)
{


if(session.getAttribute("adminUser")==null)
{

return "redirect:/admin";

}


model.addAttribute(
"users",
service.totalUsers());


model.addAttribute(
"reports",
service.totalReports());


model.addAttribute(
"phishing",
service.totalPhishing());


model.addAttribute(
"alerts",
service.totalAlerts());


return "admin-dashboard";


}
@GetMapping("/delete-user/{id}")
public String deleteUser(
@PathVariable Long id)
{


service.deleteUser(id);


return "redirect:/admin-users";


}
@GetMapping("/delete-report/{id}")
public String deleteReport(
@PathVariable Long id)
{


service.deleteReport(id);


return "redirect:/admin-reports";


}
@GetMapping("/admin-alerts")
public String viewAlerts(
Model model,
HttpSession session)
{


if(session.getAttribute("adminUser")==null)
{

return "redirect:/admin";

}


model.addAttribute(
"alerts",
service.getAllAlerts());


return "admin-alerts";


}
@GetMapping("/delete-alert/{id}")
public String deleteAlert(
@PathVariable Long id)
{


service.deleteAlert(id);


return "redirect:/admin-alerts";


}
@GetMapping("/download-reports")
public void downloadReports(
HttpServletResponse response)
throws IOException
{


response.setContentType("text/csv");


response.setHeader(
"Content-Disposition",
"attachment; filename=phishing_reports.csv");


List<Report> reports =
service.getAllReports();



response.getWriter()
.println(
"ID,Website,Status,Threat Level,Date"
);



for(Report r:reports)
{


response.getWriter()
.println(

r.getId()
+","

+r.getWebsiteUrl()
+","

+r.getDetectionStatus()
+","

+r.getThreatLevel()
+","

+r.getReportDate()

);


}


}

}