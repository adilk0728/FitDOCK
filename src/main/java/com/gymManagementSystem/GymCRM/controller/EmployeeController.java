package com.gymManagementSystem.GymCRM.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gymManagementSystem.GymCRM.entity.Employee;
import com.gymManagementSystem.GymCRM.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}	
	
	@GetMapping("/list")
	public String listCustomer(Model theModel) {

		// get customers from DAO
		List<Employee> theEmployee = employeeService.getEmployees();

		theModel.addAttribute("employees", theEmployee);

		// add customers to the model

		return "list-employees";
	}
	
	@GetMapping("showFormForEmployee")
	public String showFormForAdd(Model theModel) {

		Employee theEmployee = new Employee();

		theModel.addAttribute("employee", theEmployee);

		return "employee-form";
	}
	
	@PostMapping("saveEmployee")
	public String saveCustomer(@Valid @ModelAttribute("employee") Employee theEmployee, BindingResult theBR) {

		if(theBR.hasErrors()) {
			return "employee-form";
		}
		else {
		employeeService.saveEmployee(theEmployee);

		return "redirect:/employee/list";
		
		}

	}
	
	@GetMapping("showFormForUpdate")
	public String showFormForUpdate(@RequestParam("em_id") int theId, Model theModel) {

		
		Employee theEmployee = employeeService.getEmployee(theId);
		
		theModel.addAttribute("employee", theEmployee);

		return "employee-form";

	}

	@GetMapping("/delete")
	public String delete(@RequestParam("em_id") int theId) {

		employeeService.deleteEmployee(theId);

		return "redirect:/employee/list";

	}

}
