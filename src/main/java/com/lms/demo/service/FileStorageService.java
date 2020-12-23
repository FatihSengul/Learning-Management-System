package com.lms.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.lms.demo.model.Doc;
import com.lms.demo.repository.FileRepository;

@Service
public class FileStorageService {
	@Autowired
	private FileRepository docRepository;

	public void save(Doc doc) {
		docRepository.save(doc);
	}

	/*
	 * public Doc saveFile(MultipartFile file) { String docname =
	 * file.getOriginalFilename(); try { Doc doc = new
	 * Doc(docname,file.getContentType(),file.getBytes()); return
	 * docRepository.save(doc); } catch(Exception e) { e.printStackTrace(); } return
	 * null; }
	 */
	public Optional<Doc> getFile(Integer fileId) {
		return docRepository.findById(fileId);
	}

	public List<Doc> getFiles() {
		return docRepository.findAll();
	}
}
