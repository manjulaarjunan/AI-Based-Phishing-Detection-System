package com.example.phishing_detection_system.entity;



import jakarta.persistence.*;
import java.time.LocalDateTime;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.JoinColumn;


@Entity
@Table(name="alerts")
public class Alert {


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
    this.user = user;
}

private String websiteUrl;


private String alertMessage;


private String threatLevel;


private LocalDateTime alertDate;



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



public String getAlertMessage() {
return alertMessage;
}


public void setAlertMessage(String alertMessage) {
this.alertMessage=alertMessage;
}



public String getThreatLevel() {
return threatLevel;
}


public void setThreatLevel(String threatLevel) {
this.threatLevel=threatLevel;
}



public LocalDateTime getAlertDate() {
return alertDate;
}


public void setAlertDate(LocalDateTime alertDate) {
this.alertDate=alertDate;
}


}