package com.sa.mpf.service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sa.mpf.dto.ContactFormDTO;
import com.sa.mpf.entity.ContactFormSubmission;
import com.sa.mpf.repository.ContactFormSubmissionRepository;

import jakarta.mail.MessagingException;

@Service
public class ContactFormSubmissionService {
	@Autowired
	private ContactFormSubmissionRepository contactRepo;
	@Autowired
	private EmailService emailService;
	
	
	public String addContactData(ContactFormDTO contactFormDTO,String emailMessage) {
		String result=null;
		// Access the form fields from the DTO
		String name = contactFormDTO.getName();
		String email = contactFormDTO.getEmail();
		String phone = contactFormDTO.getPhone();
		String message = contactFormDTO.getMessage();
		String subject = contactFormDTO.getSubject();
		MultipartFile file = contactFormDTO.getFile();
		String filePath = null;
		File fileTransfer = null;
		if (file != null && !file.isEmpty()) {
			try {
				String uploadDir = "F:\\WorkSpaces\\PortfolioImages\\";
				File dir = new File(uploadDir);
				if (!dir.exists()) {
					dir.mkdir();
				}
				filePath = uploadDir + file.getOriginalFilename();
				fileTransfer = new File(filePath);
				file.transferTo(fileTransfer);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		ContactFormSubmission contact = new ContactFormSubmission(name, email, phone, message, subject, filePath);
		ContactFormSubmission save = contactRepo.save(contact);		
		if (save != null) {
			result = "Thankyou for contacting....!";
			try {
				emailService.sendContactEmailWithAttachment(name, email, phone, subject, message, fileTransfer);
				emailService.sendEmail("Conformation Message", emailMessage, email);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
}
