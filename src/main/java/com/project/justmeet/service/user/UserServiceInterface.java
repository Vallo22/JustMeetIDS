package com.project.justmeet.service.user;

import com.project.justmeet.model.User;

public interface UserServiceInterface {
	
	void save(User user);

	void update(User user);

	void deleteByUsername(String username);

	User findByUsername(String username);
}