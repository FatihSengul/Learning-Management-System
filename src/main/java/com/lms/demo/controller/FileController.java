package com.lms.demo.controller;





import java.lang.ProcessBuilder.Redirect;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.lms.demo.model.Course;
import com.lms.demo.model.Doc;
import com.lms.demo.service.CourseService;
import com.lms.demo.service.FileStorageService;



@Controller
public class FileController {

	@Autowired 
	private FileStorageService docStorageService;
	
	@Autowired CourseService courseService;
	
	
	@PostMapping("/uploadFiles/{id}")
	public String uploadMultipleFiles(@PathVariable("id") int id,@RequestParam("files") MultipartFile[] files) {
		Course course=courseService.findCourse(id);
		for (MultipartFile file: files) {
			
				String docname = file.getOriginalFilename();
			  try {
				  Doc doc = new Doc(docname,file.getContentType(),file.getBytes());
				  doc.setCourse(course);
				  docStorageService.save(doc);
			  }
			  catch(Exception e) {
				  e.printStackTrace();
			  }
			  return "Redirect:/course/details/${course.id}";
			
		}
		
		return "redirect:/";
	}
	@GetMapping("/downloadFile/{fileId}")
	public ResponseEntity<ByteArrayResource> downloadFile(@PathVariable Integer fileId){
		Doc doc = docStorageService.getFile(fileId).get();
		return ResponseEntity.ok()
				.contentType(MediaType.parseMediaType(doc.getDocType()))
				.header(HttpHeaders.CONTENT_DISPOSITION,"attachment:filename=\""+doc.getDocName()+"\"")
				.body(new ByteArrayResource(doc.getData()));
	}
	
}
