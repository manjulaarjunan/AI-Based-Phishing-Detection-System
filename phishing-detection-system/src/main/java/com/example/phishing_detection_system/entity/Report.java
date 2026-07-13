package com.example.phishing_detection_system.entity;


import jakarta.persistence.*;
import java.time.LocalDateTime;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.JoinColumn;


@Entity
@Table(name="reports")
public class Report {


@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;
@ManyToOne
@JoinColumn(name="user_id")
private User user;


public User getUser() {
    return user;
}


public void setUser(User user) {
    this.user=user;
}


private String websiteUrl;


private String detectionStatus;


private String threatLevel;


private LocalDateTime reportDate;



public Long getId() {
return id;
}


public void setId(Long id) {
this.id=id;
}


public String getWebsiteUrl() {
return websiteUrl;
}


public void setWebsiteUrl(String websiteUrl) {
this.websiteUrl=websiteUrl;
}


public String getDetectionStatus() {
return detectionStatus;
}


public void setDetectionStatus(String detectionStatus) {
this.detectionStatus=detectionStatus;
}


public String getThreatLevel() {
return threatLevel;
}


public void setThreatLevel(String threatLevel) {
this.threatLevel=threatLevel;
}


public LocalDateTime getReportDate() {
return reportDate;
}


public void setReportDate(LocalDateTime reportDate) {
this.reportDate=reportDate;
}


}