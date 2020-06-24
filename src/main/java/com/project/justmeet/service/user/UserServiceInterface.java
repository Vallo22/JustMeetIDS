package com.project.justmeet.service.user;

import com.project.justmeet.model.User;

public interface UserServiceInterface {
	
	void save(User user);
	
	void delete(User user);

	User findByUsername(String username);
	
}