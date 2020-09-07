package com.gymManagementSystem.GymCRM.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/login")
	public String showMyLoginPage() {
		
		return "landing-page";
		
	}
	
	// add request mapping for /access-denied
	
	@GetMapping("/error")
	public String showAccessDenied() {
		
		return "Exceptions/access-denied";
		
	}
	

	
}









