package elaundry.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import elaundry.domain.Customer;
import elaundry.domain.User;
import elaundry.service.CustomerService;
import elaundry.service.UserService;



@Controller
@RequestMapping("/customers")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private UserService userService;

	@RequestMapping
	public String success(Model model) {
		return "customers";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(
			@ModelAttribute("newCustomer") @Valid Customer customerToBeAdded, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "addCustomer";
		}
		
		User userData = userService.checkUserName(customerToBeAdded.getUser().getUsername());
		if (userData == null) {
			System.out.println("User name can be used");
			//customerToBeAdded.getUser().setAuthority("ROLE_USER");
			//customerToBeAdded.getUser().setEnabled(true);
			customerService.addCustomer(customerToBeAdded);
		} else {
			model.addAttribute("usernameerror", "username exist");
			User u = customerToBeAdded.getUser();
			u.setPassword("");
			customerToBeAdded.setUser(u);
			return "addCustomer";
		}
		

		return "redirect:/customers";
	}

	@RequestMapping("/add")
	public String addCustomer(Model model) {
		model.addAttribute("newCustomer", new Customer());
		return "addCustomer";

	}
	
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("customers", customerService.getAllCustomers());
		return "customerList";
	}
	
	@RequestMapping("/detail")
	public String getCustomer(Model model, @RequestParam("id")String id) {
		
		try {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			String username = authentication.getName();
			User userData = userService.checkUserName(username);
			System.out.println("Customer name" +username);
			System.out.println("Customer id" + userData.getId());
			Customer cus = customerService.getCustomerByUserId(userData.getId());
			System.out.println("Customer id" + cus.getId() + cus.getEmail());
			//System.out.println(username + "::::::::::::::::::" + authentication.getAuthorities().toString() + "----");
			//Customer customerDetail = customerService.getCustomerById(Integer.parseInt(id));
		} catch (Exception e) {
			System.out.println(">>>>" + e.getMessage());
		}
		model.addAttribute("customer", customerService.getCustomerById(Integer.parseInt(id)));
		return "customerDetail";
	}
}
