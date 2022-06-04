package com.myprojects.springboot.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;

import com.myprojects.springboot.web.services.LoginService;

@Controller
public class LoginController {

//	@RequestMapping("/login")
//	@ResponseBody
//	public String loginMessage() {
//		return "Hello World";
//	}

//	@RequestMapping("/login")
//	public String loginMessage() {
//		return "login";
//	}

//	// url --> http://localhost:8080/login?name=Hritick Nayak&rollno=14
//	@RequestMapping("/login")
//	public String loginMessage(ModelMap model, @RequestParam String name, @RequestParam String rollno) {
//		System.out.println("name is " + name);
//		model.put("name", name);
//		System.out.println("roll no is " + rollno);
//		model.put("rollno", rollno);
//		return "login";
//	}

//	// url --> http://localhost:8080/login?name=Hritick Nayak&rollno=14
//	@RequestMapping("/login")
//	public String loginMessage(ModelMap model, @RequestParam String name, @RequestParam String rollno) {
//		System.out.println("name is " + name);
//		model.put("name",name);
//		System.out.println("roll no is " + rollno);
//		model.put("rollno",rollno);
//		return "dummy";
//	}

//	// url --> http://localhost:8080/login
//	@RequestMapping("/login") // it is used as get as well as post
//	public String loginMessage(ModelMap model) {
//
//		return "login";
//
//	}

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "/login", method = RequestMethod.GET) // it is used as get as it shown when I type a url
	public String loginMessage(ModelMap model) {

		return "login";

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST) // it is used as post when I click submit button
	public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password) {

		model.put("name", name);
//		model.put("password", password);

		if (loginService.passwordValidation(name, password))
			return "welcome";

		model.put("errorMassage", "Name and Password is invalid");

		return "login";

	}

//	@RequestMapping("/welcome") // it is used as get as well as post
//	public String welcomeMessage(ModelMap model) {
//
//		return "dummy";
//
//	}

//	@RequestMapping(value = "/welcome", method = RequestMethod.GET) // it is used as get as well as post
//	public String welcomeMessage(ModelMap model) {
//
//		return "dummy";
//
//	}
//
//	@RequestMapping(value = "/welcome", method = RequestMethod.POST) // it is used as post when I click submit button
//	public String welcomeReturnMessage(ModelMap model) {
//
//		return "login";
//
//	}

}
