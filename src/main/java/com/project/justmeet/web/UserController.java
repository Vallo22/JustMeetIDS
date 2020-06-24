package com.project.justmeet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.project.justmeet.model.User;
import com.project.justmeet.service.user.UserService;
import com.project.justmeet.validator.UserValidator;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	@Autowired
	private UserValidator userValidator;

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

	@GetMapping("/profilo")
	public String profilo(Model model, User user) {
		userService.delete(user);
		return "profilo";
	}

	@PostMapping("/profilo")
	public String profilo(Model model) {
		
		return "profilo";
	}
}