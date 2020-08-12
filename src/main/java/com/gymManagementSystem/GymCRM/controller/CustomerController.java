package com.gymManagementSystem.GymCRM.controller;

import java.security.Principal;
import java.util.List;
import javax.persistence.PersistenceException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.gymManagementSystem.GymCRM.entity.Customer;
import com.gymManagementSystem.GymCRM.entity.GymClass;
import com.gymManagementSystem.GymCRM.service.CustomerService;
import com.gymManagementSystem.GymCRM.service.GymClassService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {

		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}

	@Autowired
	private GymClassService gymClassService;

	@GetMapping("/gymlist")
	public String listGymClass(Model theModel, Principal principal) {

		// get customers from DAO

		String currentUser = principal.getName();

		List<GymClass> theGymClassEnrolled = gymClassService.getGymClassCustomer(currentUser);

		theModel.addAttribute("GymClassEnrolled", theGymClassEnrolled);

		// add customers to the model

		return "customer-gymclass-enroll";
	}

	@GetMapping("enroll")
	public String enrollGymClass(@RequestParam("class_id") int theId, @RequestParam("userName") String name) {

		customerService.enrollGymClass(theId, name);

		return "payment";
	}

	@GetMapping("showFormForAdd")
	public String showFormForAdd(Model theModel) {

		Customer theCustomer = new Customer();

		theModel.addAttribute("customer", theCustomer);

		return "sign-up";
	}

	@PostMapping("/saveCustomer")
	public String saveCustomer(@Valid @ModelAttribute("customer") Customer theCustomer, BindingResult theBR) {

		if (theBR.hasErrors()) {
			return "sign-up";
		} else {

			customerService.saveCustomer(theCustomer);

			return "home";
		}

	}

	@GetMapping("showFormForUpdate")
	public String showFormForUpdate(@RequestParam("id") int theId, Model theModel) {

		Customer theCustomer = customerService.getCustomer(theId);

		theModel.addAttribute("customer", theCustomer);

		return "customer-form";

	}

	@GetMapping("/details")
	public String details(@RequestParam("userName") String theUserName, Model theModel) {

		Customer theCustomer = customerService.getCustomerdetails(theUserName);

		theModel.addAttribute("customer", theCustomer);

		return "customer-details";

	}

	@GetMapping("/home")
	public String home() {

		return "customer-home";

	}

	@GetMapping("/enrollgymlist")
	public String listGymClassEnrolle(Model theModel) {

		List<GymClass> theGymClass = gymClassService.getGymClass();

		theModel.addAttribute("GymClass", theGymClass);

		// add customers to the model

		return "customer-class-enroll";
	}

//	@GetMapping("/delete")
//	public String delete(@RequestParam("id") int theId) {
//
//		customerService.deleteCustomer(theId);
//
//		return "redirect:/customer/list";
//
//	}
	@GetMapping("feedback")
	public String feedback(Model theModel, Principal principal) {

		String currentUser = principal.getName();

		List<GymClass> Feedback = gymClassService.getFeedback(currentUser);

		theModel.addAttribute("Feedback", Feedback);

		return "Customer/feedback";
	}

	@GetMapping("feedbackshow")
	public String feedbackshowform(@RequestParam("class_id") int class_id, Model theModel) {

		GymClass theGymClass = new GymClass();

		theModel.addAttribute("class_id", class_id);
		theModel.addAttribute("theGymClass", theGymClass);

		return "Customer/feedbackform";
	}

	@GetMapping("feedbackDone")
	public String feedbackshowformDone(@RequestParam("class_id") int class_id, Model theModel, Principal principal,
			@RequestParam("var1") String var1, @RequestParam("var2") String var2, @RequestParam("var3") String var3,
			@RequestParam("var4") String var4, @RequestParam("var5") String var5, @RequestParam("comment") String comment, @ModelAttribute("theGymClass") GymClass gymClass) {

		String currentUser = principal.getName();


//		int var1new = Integer.parseInt(theGymClass.getVar1());
//		int var2new = Integer.parseInt(theGymClass.getVar2());
//		int var3new = Integer.parseInt(theGymClass.getVar3());
//		int var4new = Integer.parseInt(theGymClass.getVar4());
//		int var5new = Integer.parseInt(theGymClass.getVar5());
		
		int var1new = gymClass.getVar1();
		int var2new =  gymClass.getVar2();
		int var3new =  gymClass.getVar3();
		int var4new =  gymClass.getVar4();
		int var5new =  gymClass.getVar5();
		System.out.println(var1new);
		System.out.println(var2new);
		System.out.println(var3new);
		float res = (float) ((var1new + var2new + var3new + var4new + var5new) / 5.0);
		System.out.println(res);
		comment = gymClass.getComment();
		System.out.println(comment);
		gymClassService.saveFeedback(currentUser, res, comment);

		return "home";
	}

	@ExceptionHandler(value = PersistenceException.class)
	public String handleExceptions(Exception e) {

		return "Exceptions/exception-page";
	}

}
