package com.gymManagementSystem.GymCRM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.gymManagementSystem.GymCRM.entity.Customer;
import com.gymManagementSystem.GymCRM.entity.FinanceObject;
import com.gymManagementSystem.GymCRM.entity.GymFinanceDetails;
import com.gymManagementSystem.GymCRM.service.AdminService;
import com.gymManagementSystem.GymCRM.service.CustomerService;


@Controller
@RequestMapping("/admin")
public class AdminController {

	// need to inject our customer service
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/list")
	public String listCustomers(Model theModel) {
		
		// get customers from the service
		List<Customer> theCustomers = customerService.getCustomers();
				
		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);
		
		return "list-customers";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId) {
		
		// delete the customer
		customerService.deleteCustomer(theId);
		
		return "redirect:/admin/list";
	}
	
	
	@GetMapping("/finance")
	public String showFinancePage(Model theModel) {
		
		int total = adminService.getTotalEarning();
		List<FinanceObject> fin = adminService.getDetailedEarning();
		List<GymFinanceDetails> gymFin = adminService.getClasWiseEarning();
		Integer totalCust = adminService.getTotalEnrolled();
		Integer totalMale = adminService.getTotalMale();
		Integer totalFemale = adminService.getTotalFemale();
		Integer totalOther = adminService.getTotalOther();
		List<GymFinanceDetails> gymClassEnrolled  = adminService.getEnrolledClass();
		theModel.addAttribute("gymClassEnrolled",gymClassEnrolled);
		theModel.addAttribute("totalCust",totalCust);
		theModel.addAttribute("total",total);
		theModel.addAttribute("fin",fin);
		theModel.addAttribute("totalMale", totalMale);
		theModel.addAttribute("totalFemale", totalFemale);
		theModel.addAttribute("totalOther", totalOther);
		theModel.addAttribute("gymFin", gymFin);
		
		return "finance-home";
	}
	
//	@ExceptionHandler(value = Exception.class)
//	public String handleExceptions(Exception e) {
//		
//		return "exception-page";
//	}
	
}










