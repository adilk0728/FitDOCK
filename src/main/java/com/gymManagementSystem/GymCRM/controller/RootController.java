package com.gymManagementSystem.GymCRM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.gymManagementSystem.GymCRM.entity.GymFinanceDetails;
import com.gymManagementSystem.GymCRM.service.AdminService;

@Controller
public class RootController {
	
	@Autowired
	private AdminService adminService;

	@GetMapping("/")
	public String showIndex(Model theModel) {
		
		List<GymFinanceDetails> feedback = adminService.getRatingsAndFeedback();
		theModel.addAttribute("feedback", feedback);
		
		
		return "FitDOCK-homepage";
	}
	

}
