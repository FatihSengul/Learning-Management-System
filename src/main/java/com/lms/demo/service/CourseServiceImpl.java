package com.lms.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.lms.demo.model.Course;
import com.lms.demo.repository.CourseRepository;

@Service
public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseRepository courseRepository;

	@Override
	public void saveCourse(Course course) {
		// TODO Auto-generated method stub
		courseRepository.save(course);
	}

	@Override
	public Course findCourse(long id) {
		// TODO Auto-generated method stub
		return courseRepository.getOne(id);
	}

	@Override
	public Course findByCode(String code) {
		// TODO Auto-generated method stub
		return courseRepository.findByCoursecode(code);
	}

}
