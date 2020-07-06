package com.project.justmeet.exception;

public class ApiRequestException extends RuntimeException {
	
	public ApiRequestException(String message) {}

	public ApiRequestException(String message, Throwable cause) {
		super(message, cause);
	}
	
}