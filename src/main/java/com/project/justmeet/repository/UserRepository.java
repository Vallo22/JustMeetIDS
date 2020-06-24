package com.project.justmeet.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.justmeet.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	User findByUsername(String username);

}
