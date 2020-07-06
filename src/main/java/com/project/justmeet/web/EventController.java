package com.project.justmeet.web;

import java.security.Principal;
import java.util.HashSet;
import java.util.Set;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.project.justmeet.model.Event;
import com.project.justmeet.model.User;
import com.project.justmeet.service.event.EventService;
import com.project.justmeet.service.user.UserService;
import com.project.justmeet.validator.EventValidator;

@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;

	@Autowired
	private UserService userService;

	@Autowired
	private EventValidator eventValidator;

	@GetMapping("/newEvent")
	public String newEvent(Model model) {
		model.addAttribute("eventForm", new Event());

		return "newEvent";
	}

	@PostMapping("/newEvent")
	public String newEvent(@ModelAttribute("eventForm") Event eventForm, Principal user,
			BindingResult bindingResult) {
		eventValidator.validate(eventForm, bindingResult);

		if (bindingResult.hasErrors())
			return "newEvent";

		eventForm.getUsers().add(userService.findByUsername(user.getName()));

		userService.findByUsername(user.getName()).getEvents().add(eventForm);

		eventService.save(eventForm);

		return "redirect:/myEvents";
	}

	@GetMapping("/eventsList")
	public String eventsList(Model model) {
		model.addAttribute("sportList", eventService.findAllByCategory("Sport"));
		model.addAttribute("studioList", eventService.findAllByCategory("Studio"));
		model.addAttribute("giochiList", eventService.findAllByCategory("Giochi"));
		model.addAttribute("altroList", eventService.findAllByCategory("Altro"));
		model.addAttribute("allList", eventService.findAll());

		return "/eventsList";
	}

	@GetMapping("/myEvents")
	public String myEvents(Model model, Principal user) {
		model.addAttribute("list", eventService.findAllByUsername(user.getName()));
		model.addAttribute("id", new Event());

		return "/myEvents";
	}

	@Transactional
	@PostMapping("/myEvents")
	public String deleteEvent(@ModelAttribute("id") long id, BindingResult bindingResult) {
		if (bindingResult.hasErrors())
			return "/myEvents";

		for (User u : eventService.findById(id).getUsers()) {
			u.getEvents().remove(eventService.findById(id));
			userService.update(u);
		}

		eventService.deleteById(id);

		return "redirect:/myEvents";
	}

	@GetMapping("/editEvent")
	public String editEvent(Model model, @RequestParam long id) {
		model.addAttribute("event", eventService.findById(id));

		return "/editEvent";
	}

	@PostMapping("/editEvent")
	public String editEvent(@ModelAttribute("event") Event event, BindingResult bindingResult) {
		eventValidator.validate(event, bindingResult);

		event.setUsers(eventService.findById(event.getId()).getUsers());

		eventService.save(event);

		return "redirect:/eventDetails?id=" + event.getId();
	}

	@GetMapping("/eventDetails")
	public String getEvent(Model model, Principal user, @RequestParam long id) {
		boolean creator = false, participate = false;

		if (user.getName().equals(eventService.findById(id).getUsername()))
			creator = true;

		for (User u : eventService.findById(id).getUsers())
			if (user.getName().equals(u.getUsername()))
				participate = true;

		model.addAttribute("user", userService.findByUsername(eventService.findById(id).getUsername()));
		model.addAttribute("creator", creator);
		model.addAttribute("participate", participate);
		model.addAttribute("category", eventService.findById(id).getCategory());
		model.addAttribute("event", eventService.findById(id));
		model.addAttribute("addParticipation", new Event());

		return "eventDetails";
	}

	@PostMapping("/eventDetails")
	public String addParticipation(@ModelAttribute("id") long id, Principal user) {
		eventService.findById(id).getUsers().add(userService.findByUsername(user.getName()));

		userService.findByUsername(user.getName()).getEvents().add(eventService.findById(id));

		eventService.save(eventService.findById(id));

		userService.update(userService.findByUsername(user.getName()));

		return "redirect:/participations";
	}

	@GetMapping("/participations")
	public String participations(Model model, Principal user) {
		Set<Event> myEvents = new HashSet<Event>();

		for (Event e : userService.findByUsername(user.getName()).getEvents())
			if (e.getUsername().equals(user.getName()))
				myEvents.add(e);

		userService.findByUsername(user.getName()).getEvents().removeAll(myEvents);

		model.addAttribute("participations", userService.findByUsername(user.getName()).getEvents());
		model.addAttribute("removeParticipation", new Event());

		return "/participations";
	}

	@PostMapping("/participations")
	public String removeParticipation(@ModelAttribute("id") long id, Principal user, BindingResult bindingResult) {
		eventService.findById(id).getUsers().remove(userService.findByUsername(user.getName()));

		userService.findByUsername(user.getName()).getEvents().remove(eventService.findById(id));

		eventService.save(eventService.findById(id));

		userService.update(userService.findByUsername(user.getName()));

		return "redirect:/participations";
	}

}