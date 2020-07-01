package com.project.justmeet.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.project.justmeet.model.User;
import com.project.justmeet.repository.RoleRepository;
import com.project.justmeet.repository.UserRepository;

import java.util.HashSet;

@Service
public class UserService implements UserServiceInterface {
	
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public void save(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(new HashSet<>(roleRepository.findAll()));

		userRepository.save(user);
	}

	@Override
	public void update(User user) {
		userRepository.save(user);
	}

	@Override
	public void deleteByUsername(String username) {
		userRepository.deleteByUsername(username);
	}

	@Override
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}
	
}