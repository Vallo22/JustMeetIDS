package com.project.justmeet.service.event;

import java.util.List;

import com.project.justmeet.model.Event;

public interface EventServiceInterface {
	
	void save(Event event);

	void delete(Event event);

	Event findByTitle(String title);

	List<Event> findAllByCategory(String category);
	
}
