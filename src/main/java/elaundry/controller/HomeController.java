package elaundry.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import elaundry.domain.LaundryService;
import elaundry.domain.LoginForm;
import elaundry.domain.User;
import elaundry.service.LaundryServiceService;
import elaundry.service.UserService;
import elaundry.serviceImpl.UserServiceImpl;

@Controller
public class HomeController {
	
	//@Autowired
	//private LaundryServiceService laundryServiceService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String HomePage() {
		return "homePage"; //"welcome";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login() {
 		return "login";
	}
 
	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(Model model) {
 
		model.addAttribute("error", "true");
		return "login";
 
	}
 
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(Model model) {
 		return "redirect:/";
 	}
}
