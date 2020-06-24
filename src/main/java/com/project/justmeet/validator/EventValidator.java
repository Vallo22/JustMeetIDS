package com.project.justmeet.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.project.justmeet.model.Event;
import com.project.justmeet.service.event.EventService;

@Component
public class EventValidator implements Validator {
	
	@Autowired
	private EventService eventService;

	@Override
	public boolean supports(Class<?> aClass) {
		return Event.class.equals(aClass);
	}

	@Override
	public void validate(Object o, Errors errors) {
		Event event = (Event) o;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "NotEmpty");
		if (event.getTitle().length() < 6 || event.getTitle().length() > 32)
			errors.rejectValue("title", "Size.eventForm.title");

		if (eventService.findByTitle(event.getTitle()) != null)
			errors.rejectValue("title", "Duplicate.eventForm.title");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "NotEmpty");
		if (event.getDescription().length() < 50 || event.getDescription().length() > 200)
			errors.rejectValue("description", "Size.eventForm.description");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "place", "NotEmpty");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "NotEmpty");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "participants", "NotEmpty");
		if (event.getParticipants() <= 1)
			errors.rejectValue("participants", "Size.eventForm.participants");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "category", "NotEmpty");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "date", "NotEmpty");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "time", "NotEmpty");
	}
	
}