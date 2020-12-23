package com.lms.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lms.demo.model.StudentAssignment;

@Repository
public interface StudentAssignmentRepository extends JpaRepository<StudentAssignment,Long>{

}
