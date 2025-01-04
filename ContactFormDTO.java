package com.sa.mpf.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class ContactFormDTO {
    private String name;
    private String email;
    private String phone;
    private String message;
    private String subject;
    private MultipartFile file;

}
/*
 
 import org.springframework.web.multipart.MultipartFile;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class ContactFormDTO {

    @NotBlank(message = "Name is required")
    @Size(min = 3, max = 100, message = "Name should be between 3 and 100 characters")
    private String name;

    @NotBlank(message = "Email is required")
    @Email(message = "Invalid email format")
    private String email;

    @Size(max = 15, message = "Phone number should not exceed 15 characters")
    private String phone;

    @NotBlank(message = "Message is required")
    private String message;

    @NotBlank(message = "Subject is required")
    private String subject;

    private MultipartFile file;  // For file upload

    // Getters and setters

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }
}

 
 
 
 */

