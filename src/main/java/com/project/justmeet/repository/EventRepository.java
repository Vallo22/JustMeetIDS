package com.project.justmeet.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

import com.project.justmeet.model.Event;

public interface EventRepository extends JpaRepository<Event, Long> {
	
	Event findByTitle(String title);

	List<Event> findAllByCategory(String category);
	
}