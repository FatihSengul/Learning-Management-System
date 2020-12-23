package com.lms.demo.service;

import java.util.List;

import com.lms.demo.model.Course;
import com.lms.demo.model.User;

public interface CourseService {

	void saveCourse(Course course);

	Course findCourse(long id);

	Course findByCode(String code);

	
}
