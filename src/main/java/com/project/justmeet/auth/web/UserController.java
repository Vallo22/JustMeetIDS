package com.project.justmeet.auth.web;

import com.project.justmeet.auth.model.User;
import com.project.justmeet.auth.service.UserService;
import com.project.justmeet.auth.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

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
	public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
		userValidator.validate(userForm, bindingResult);

		if (bindingResult.hasErrors())
			return "signup";

		userService.save(userForm);

		return "redirect:/welcome";
	}

	@GetMapping("/signin")
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "pass e user non validi");

		if (logout != null)
			model.addAttribute("message", "sloggato ok");

		return "signin";
	}

	@GetMapping({ "/", "/welcome" })
	public String welcome(Model model) {
		return "welcome";
	}
}
