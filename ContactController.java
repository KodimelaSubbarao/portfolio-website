package com.sa.mpf.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sa.mpf.awt.CaptchaGenerator;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@RestController()
public class ContactController {
	
	@GetMapping("/captcha")
	@ResponseBody
	public void generateCaptcha(HttpSession session, HttpServletResponse response) throws IOException {
		CaptchaGenerator captchaGenerator = new CaptchaGenerator();
		String captchaCode = captchaGenerator.generateCaptchaCode();
		session.setAttribute("captchaCode", captchaCode);
		BufferedImage captchaImage = captchaGenerator.generateCaptchaImage(captchaCode);
		response.setContentType("image/jpeg");
		ImageIO.write(captchaImage, "png", response.getOutputStream());
	}

	@PostMapping("/validateCaptcha")
	@ResponseBody
	public boolean validateCaptcha(@RequestParam("captcha") String userCaptcha, HttpSession session) {
		String correctCaptcha = (String) session.getAttribute("captchaCode");
		boolean bool = userCaptcha != null && userCaptcha.equals(correctCaptcha);
		return bool;
	}

	
}
