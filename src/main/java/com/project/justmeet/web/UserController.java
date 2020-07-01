package com.project.justmeet.web;

import java.security.Principal;
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
import com.project.justmeet.validator.UserValidator;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private UserValidator userValidator;

	@Autowired
	private EventService eventService;

	@GetMapping("/signup")
	public String signup(Model model) {
		model.addAttribute("userForm", new User());

		return "signup";
	}

	@PostMapping("/signup")
	public String signup(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
		userValidator.validate(userForm, bindingResult);

		if (bindingResult.hasErrors())
			return "signup";

		userService.save(userForm);

		return "redirect:/home";
	}

	@GetMapping("/signin")
	public String signin(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "pass e user non validi");

		if (logout != null)
			model.addAttribute("message", "sloggato ok");

		return "signin";
	}

	@GetMapping({ "/", "/home" })
	public String home(Model model) {
		return "home";
	}

	@GetMapping("/profile")
	public String account(Model model, Principal user) {
		model.addAttribute("user", userService.findByUsername(user.getName()));
		model.addAttribute("username", new User());

		return "profile";
	}

	@Transactional
	@PostMapping("/profile")
	public String deleteAccount(@ModelAttribute("username") String username, BindingResult bindingResult) {
		if (bindingResult.hasErrors())
			return "profile";

		for (Event event : userService.findByUsername(username).getEvents()) {
			event.getUsers().remove(userService.findByUsername(username));
			eventService.save(event);
		}

		eventService.deleteByUsername(username);

		userService.deleteByUsername(username);

		return "redirect:/signin";
	}

	@GetMapping("/editUser")
	public String editUser(Model model, Principal user) {
		model.addAttribute("user", userService.findByUsername(user.getName()));

		return "/editUser";
	}

	@PostMapping("/editUser")
	public String editUser(@ModelAttribute("user") User user, BindingResult bindingResult) {
		userValidator.validate(user, bindingResult);

		user.setPassword(userService.findByUsername(user.getUsername()).getPassword());

		user.setEvents(userService.findByUsername(user.getUsername()).getEvents());

		user.setRoles(userService.findByUsername(user.getUsername()).getRoles());

		userService.update(user);

		return "redirect:/profile";
	}
}