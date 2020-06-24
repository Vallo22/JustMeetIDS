package com.project.justmeet.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.justmeet.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {}