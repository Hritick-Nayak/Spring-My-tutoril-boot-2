package com.myprojects.springboot.web.services;

import org.springframework.stereotype.Component;
//import org.springframework.stereotype.Service;

//@Service
@Component
public class LoginService {

	public boolean passwordValidation(String name, String password) {

		return name.equals("HritickNayak") && password.equals("password");

	}

}
