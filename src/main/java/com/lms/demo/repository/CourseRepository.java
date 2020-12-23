package com.lms.demo.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lms.demo.model.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {
	
	Course findByCoursecode(String code);

}
