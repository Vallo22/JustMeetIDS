package com.project.justmeet.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.project.justmeet.model.Event;
import com.project.justmeet.service.event.EventService;
import com.project.justmeet.validator.EventValidator;

@Controller
public class EventController {
	@Autowired
	private EventService eventService;

	@Autowired
	private EventValidator eventValidator;

	@GetMapping("/newEvent")
	public String newEvent(Model model) {
		model.addAttribute("eventForm", new Event());

		return "newEvent";
	}

	@PostMapping("/newEvent")
	public String newEvent(@ModelAttribute("eventForm") Event eventForm, BindingResult bindingResult) {
		eventValidator.validate(eventForm, bindingResult);

		if (bindingResult.hasErrors())
			return "newEvent";

		eventService.save(eventForm);

		return "redirect:/myEvents";
	}

	@GetMapping("/eventDetails")
	public String eventDetails(Model model, String error, String delete) {
		if (error != null)
			model.addAttribute("error", "errore evento");

		if (delete != null)
			model.addAttribute("message", "evento eliminato");

		return "eventDetails";
	}

	@GetMapping("/eventsList")
	public ModelAndView eventsList() {
		List<Event> list = eventService.findAllByCategory("Sport");
		List<String> eventsList = new ArrayList<String>();
		eventsList.add(list.get(0).getTitle());
		ModelAndView map = new ModelAndView("eventsList");
		map.addObject("eventsList", eventsList);
		return map;
	}

	@GetMapping("/myEvents")
	public void myEvents(@ModelAttribute("searchForm") String searchForm, BindingResult bindingResult) {
	}
}