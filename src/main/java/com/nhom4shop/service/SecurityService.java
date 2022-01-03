package com.nhom4shop.service;

public interface SecurityService {

	String findLoggedInUsername();

	void autologin(String email, String password);

}
