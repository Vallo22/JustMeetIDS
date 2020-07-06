package com.project.justmeet.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.project.justmeet.model.User;
import com.project.justmeet.service.user.UserService;

@Component
public class UserValidator implements Validator {
	@Autowired
	private UserService userService;

	@Override
	public boolean supports(Class<?> aClass) {
		return User.class.equals(aClass);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		User user = (User) obj;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "surname", "NotEmpty");
		
		if (user.getUsername().length() < 6 || user.getUsername().length() > 32)
			errors.rejectValue("username", "Size.userForm.username");

		if (userService.findByUsername(user.getUsername()) != null)
			errors.rejectValue("username", "Duplicate.userForm.username");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
		if (user.getEmail().length() < 6 || user.getEmail().length() > 32)
			errors.rejectValue("email", "Size.userForm.email");

		if (userService.findByUsername(user.getEmail()) != null)
			errors.rejectValue("email", "Duplicate.userForm.email");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
		if (user.getPassword().length() < 8 || user.getPassword().length() > 32)
			errors.rejectValue("password", "Size.userForm.password");

		if (!user.getPasswordConfirm().equals(user.getPassword()))
			errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "NotEmpty");
	}
}