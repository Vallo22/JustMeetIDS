package com.project.justmeet.service.event;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.justmeet.model.Event;
import com.project.justmeet.repository.EventRepository;

@Service
public class EventService implements EventServiceInterface {
	@Autowired
	private EventRepository eventRepository;

	@Override
	public void save(Event event) {
		eventRepository.save(event);
	}

	@Override
	public void delete(Event event) {
		eventRepository.delete(event);
	}

	@Override
	public Event findByTitle(String title) {
		return eventRepository.findByTitle(title);
	}

	@Override
	public List<Event> findAllByCategory(String category) {
		return eventRepository.findAllByCategory(category);
	}

	@Override
	public List<Event> findAllByUsername(String username) {
		return eventRepository.findAllByUsername(username);
	}

	@Override
	public List<Event> findAll() {
		return eventRepository.findAll();
	}

	@Override
	public void deleteByUsername(String username) {
		eventRepository.deleteByUsername(username);
	}

	@Override
	public void deleteById(long id) {
		eventRepository.deleteById(id);
	}

	@Override
	public Event findById(long id) {
		return eventRepository.findById(id);
	}

}