package com.example.phishing_detection_system.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name="url_analysis")
public class UrlAnalysis {


@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;


private String websiteUrl;


private String status;


private LocalDateTime detectionDate;



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


public String getStatus() {
return status;
}


public void setStatus(String status) {
this.status=status;
}


public LocalDateTime getDetectionDate() {
return detectionDate;
}


public void setDetectionDate(LocalDateTime detectionDate) {
this.detectionDate=detectionDate;
}

}