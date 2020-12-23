package com.lms.demo.controller;


import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lms.demo.model.Course;
import com.lms.demo.model.Doc;
import com.lms.demo.model.User;
import com.lms.demo.service.CourseService;
import com.lms.demo.service.FileStorageService;
import com.lms.demo.service.UserService;

@Controller
@RequestMapping("/course")
public class CourseController {
	@Autowired
	CourseService courseService;
	@Autowired
	UserService userService;
	@Autowired
	private FileStorageService docStorageService;

	@RequestMapping("/coursepanel")
	public String courseForm( Model model) {
		
		Course course=new Course();
		model.addAttribute("course", course);
		
		
		
	
		
		return "courseform";

	}

	@PostMapping("/newcourse")
	public String courseCreate(@ModelAttribute("course") Course course, Model model,Principal principal) {
		User user=userService.findByEmail(principal.getName());
		List<Course> courses=user.getCourses();
		courses.add(course);
		course.setTeacher(user);
		
		courseService.saveCourse(course);
		
		return "redirect:/home";

	}

	@RequestMapping("/details/{id}")
	public String couresDetails(@PathVariable(name = "id") int id, Model model) {

		Course course = courseService.findCourse(id);
		List<Doc> docs = course.getMetarials();
		model.addAttribute("docs", docs);
		model.addAttribute("course", course);
		return "detailCourse";
	}

	@RequestMapping(value = "/{id}/members", method = RequestMethod.GET)
	public String getMembers(@PathVariable(name = "id") int id, Model model) {
		Course course = courseService.findCourse(id);
		System.out.println(course.getName());
		model.addAttribute("course", course);
		return "membersCourse";
	}

}
