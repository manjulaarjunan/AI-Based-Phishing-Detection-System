package com.example.phishing_detection_system.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;


@Entity
@Table(name="ai_detection")
public class AIDetection {


@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;


private String websiteUrl;


private int riskScore;


private String prediction;


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



public int getRiskScore() {
return riskScore;
}


public void setRiskScore(int riskScore) {
this.riskScore=riskScore;
}



public String getPrediction() {
return prediction;
}


public void setPrediction(String prediction) {
this.prediction=prediction;
}



public LocalDateTime getDetectionDate() {
return detectionDate;
}


public void setDetectionDate(LocalDateTime detectionDate) {
this.detectionDate=detectionDate;
}


}