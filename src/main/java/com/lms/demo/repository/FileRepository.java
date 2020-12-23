package com.lms.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lms.demo.model.Doc;



public interface FileRepository  extends JpaRepository<Doc,Integer>{

}
