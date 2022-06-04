package com.myprojects.springboot.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;

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

	// url --> http://localhost:8080/login
	@RequestMapping("/login") // it is used as get as well as post
	public String loginMessage(ModelMap model) {

		return "login";

	}

}
