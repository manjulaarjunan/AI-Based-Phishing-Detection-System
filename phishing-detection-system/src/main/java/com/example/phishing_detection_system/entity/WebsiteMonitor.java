package com.example.phishing_detection_system.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;


@Entity
@Table(name="website_monitor")
public class WebsiteMonitor {


@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;


private String websiteUrl;


private String keywordFound;


private String status;


private LocalDateTime scanDate;



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



public String getKeywordFound() {
return keywordFound;
}


public void setKeywordFound(String keywordFound) {
this.keywordFound=keywordFound;
}



public String getStatus() {
return status;
}


public void setStatus(String status) {
this.status=status;
}



public LocalDateTime getScanDate() {
return scanDate;
}


public void setScanDate(LocalDateTime scanDate) {
this.scanDate=scanDate;
}

}