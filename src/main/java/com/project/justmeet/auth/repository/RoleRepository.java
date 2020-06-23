package com.project.justmeet.auth.repository;

import com.project.justmeet.auth.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}