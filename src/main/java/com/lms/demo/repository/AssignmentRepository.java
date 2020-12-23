package com.lms.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lms.demo.model.Assignment;

@Repository
public interface AssignmentRepository extends JpaRepository<Assignment, Long> {
}
