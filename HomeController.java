package com.sa.mpf.controller;

import java.net.MalformedURLException;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sa.mpf.dto.ContactFormDTO;
import com.sa.mpf.service.ContactFormSubmissionService;
import com.sa.mpf.service.LocationService;
import com.sa.mpf.utils.EmailMessages;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import eu.bitwalker.useragentutils.UserAgent;

@Controller
public class HomeController {

	@Autowired
	private ContactFormSubmissionService contactService;
	@Value("${cv.file.path}")
	private String filePath;
	@Autowired
	private LocationService locationService;

	@GetMapping(value = { "/", "/home" })
	public ModelAndView showHomePage() {
		return new ModelAndView("commons/homePage");
	}

	@PostMapping("/submit-contact")
	public String submitContactForm(@ModelAttribute ContactFormDTO contactFormDTO, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userAgentString = request.getHeader("User-Agent");
		String ipAddress = request.getRemoteAddr();
		UserAgent userAgent = UserAgent.parseUserAgentString(userAgentString);
		String browser = userAgent.getBrowser().getName();
		String operatingSystem = userAgent.getOperatingSystem().getName();
		String deviceType = userAgent.getOperatingSystem().getDeviceType().getName();
		String locationDetails = locationService.getLocationInfo(ipAddress);
		String notification = EmailMessages.sendContactNotification(contactFormDTO.getName(),
				operatingSystem + " " + deviceType, browser, locationDetails);
		String data = contactService.addContactData(contactFormDTO, notification);
		if (data != null) {
			session.setAttribute("message", data);
		} else {
			session.setAttribute("errorMessage", "Unable to send the data,due to internal server problem");
		}
		return "redirect:home";
	}

	@GetMapping("/downloadMyCV")
	public ResponseEntity<Resource> downloadCV(HttpServletRequest request) {
		HttpSession session = request.getSession();
		try {
			Path cvPath = Paths.get(filePath);
			Resource resource = new UrlResource(cvPath.toUri());
			if (resource.exists() || resource.isReadable()) {
				return ResponseEntity.ok().header(HttpHeaders.CONTENT_DISPOSITION,
						"attachment; filename=\"" + resource.getFilename() + "\"").body(resource);
			} else {
				session.setAttribute("errorMessage", "CV downloading failed, due to internall error...");
				throw new RuntimeException("CV file not found or not readable");
			}
		} catch (MalformedURLException e) {
			session.setAttribute("errorMessage", "CV downloading failed, due to internall error...");
			throw new RuntimeException("Error while retrieving CV file", e);
		}
	}

}
