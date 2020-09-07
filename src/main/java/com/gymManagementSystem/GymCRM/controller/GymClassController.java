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

import com.gymManagementSystem.GymCRM.entity.GymClass;
import com.gymManagementSystem.GymCRM.service.GymClassService;

@Controller
@RequestMapping("/GymClass")
public class GymClassController {
	
	@Autowired
	private GymClassService gymClassService;
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}	
	
	@GetMapping("/list")
	public String listGymClass(Model theModel) {

		// get customers from DAO
		List<GymClass> theGymClass = gymClassService.getGymClass();

		theModel.addAttribute("GymClass", theGymClass);

		// add customers to the model

		return "list-gymclasses";
	}
	
	@GetMapping("showFormForAdd")
	public String showFormForAdd(Model theModel) {

		GymClass theGymClass = new GymClass();
		
		theModel.addAttribute("GymClass", theGymClass);

		return "Admin/gymclasses-form";
	}
	
	@PostMapping("/saveGymClass")
	public String saveCustomer(@Valid @ModelAttribute("GymClass") GymClass theGymClass, BindingResult theBR) {
//		
//		System.out.println("Binding Ressult"+ theBR);
//		
//		System.out.println("\n\n\n\n\n");
		
		if(theBR.hasErrors()){
			return "Admin/gymclasses-form";
		}
		else {


		gymClassService.saveGymClass(theGymClass);
		

		return "redirect:/GymClass/list";
		}

	}
	
	@GetMapping("showFormForUpdate")
	public String showFormForUpdate(@RequestParam("class_id") int theId, Model theModel) {

		
		GymClass theGymClass = gymClassService.getGymClass(theId);
		
		theModel.addAttribute("GymClass", theGymClass);

		return "Admin/gymclasses-form";

	}

	@GetMapping("/delete")
	public String delete(@RequestParam("class_id") int theId) {

		gymClassService.deleteGymClass(theId);

		return "redirect:/GymClass/list";

	}

}
