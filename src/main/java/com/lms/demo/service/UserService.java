package com.lms.demo.service;

import com.lms.demo.model.User;

public interface UserService {

	public void saveUser(User user);
	
	public boolean isUserAlreadyPresent(User user);
	
	User findByEmail(String email);
}
