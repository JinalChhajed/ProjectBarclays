package com.example.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailService{

    @Autowired
    private JavaMailSender emailSender;

  

	 void sendEmail() {

	        SimpleMailMessage msg = new SimpleMailMessage();
	       
	        emailSender.send(msg);

	    }
	 public void sendEmail(String message) {

	        SimpleMailMessage msg = new SimpleMailMessage();
	       
	       
	        msg.setTo("jinal.chhajed@cumminscollege.in","rkavitake13@gmail.com");

	        msg.setSubject("Transaction with Barclays Bank");
	        msg.setText(message);
	    

	        emailSender.send(msg);
	        

	    }
}