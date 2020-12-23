package com.lms.demo.controller;

import java.security.Principal;

import java.util.LinkedHashMap;

import java.util.Map;

import javax.annotation.PostConstruct;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.lms.demo.model.User;
import com.lms.demo.service.CourseService;

import com.lms.demo.service.UserService;

@Controller
public class AuthenticationController {

	@Autowired
	UserService userService;
	@Autowired
	CourseService courseService;

	private Map<String, String> roles;

	@PostConstruct
	protected void loadRoles() {

		roles = new LinkedHashMap<String, String>();

		roles.put("ROLE_STUDENT", "Student");
		roles.put("ROLE_TEACHER", "Teacher");
		roles.put("ROLE_ADMIN", "Admin");
	}

	@RequestMapping("/")
	public String home1() {
		return "mainpage";
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public ModelAndView login() {
		User user = new User();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		modelAndView.addObject("user", user);

		return modelAndView;
	}

	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView modelAndView = new ModelAndView();

		User user = new User();

		modelAndView.addObject("roles", roles);
		modelAndView.addObject("user", user);
		modelAndView.setViewName("register");
		return modelAndView;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(Principal principal) {

		System.out.println(principal.getName());
		User user1 = userService.findByEmail(principal.getName());
		int kurssayisi=user1.getCourses().size();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("home");
		modelAndView.addObject("user", user1);
		modelAndView.addObject("kurssayisi", kurssayisi);

		return modelAndView;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@Valid @ModelAttribute User user, BindingResult bindingResult, ModelMap modelMap) {
		System.out.println(user.getEmail());
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("redirect:/login");
		if (bindingResult.hasErrors()) {
			modelAndView.addObject("successMessage", "Lütfen formdaki hataları düzeltin!");
			modelMap.addAttribute("bindingResult", bindingResult);
			return modelAndView;
			
		} else if (userService.isUserAlreadyPresent(user)) {
			modelAndView.addObject("successMessage", "kullanıcı zaten kayıtlı");
			return modelAndView;
		}else {
			userService.saveUser(user);

			modelAndView.addObject("successMessage", "Kullancı ekleme işlemi başarılı!");
			return modelAndView;
		}

		

		

	}

}
