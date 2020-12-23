package com.lms.demo.controller;

import java.security.Principal;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.lms.demo.model.Course;

import com.lms.demo.model.User;
import com.lms.demo.service.CourseService;

import com.lms.demo.service.UserService;



@Controller
public class UserController {
	@Autowired
	CourseService courseService;
	@Autowired
	UserService userService;
	@RequestMapping(name = "/joincourse",method = RequestMethod.GET)
	public String joinCourseCode() {
		
		return "coursejoin";

	}

	@PostMapping("/joincourse")
	public String joinCourse(@RequestParam(name = "coursecode") String code,Principal principal) {
		System.out.println("Kursa Katıl");
		Course course= courseService.findByCode(code);
		System.out.println(course.getName());
		if(course!=null) {
			User user=userService.findByEmail(principal.getName());
			
			List<User> users=course.getUsers();
			users.add(user);
			user.getCourses().add(course);
			courseService.saveCourse(course);
			return "redirect:/home";
		}
		System.out.println("Kurs bulunamadı");
		return "redirect:/home";
		
	}
}
