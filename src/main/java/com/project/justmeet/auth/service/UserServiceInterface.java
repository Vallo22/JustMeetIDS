package com.project.justmeet.auth.service;

import com.project.justmeet.auth.model.User;

public interface UserServiceInterface {
	
	void save(User user);

	User findByUsername(String username);
}