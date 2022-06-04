package com.myprojects.springboot.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;

import com.myprojects.springboot.web.service.TodoService;

@Controller
public class TodoController {

	@Autowired
	TodoService todoService;

	@RequestMapping(value = "/list-todos", method = RequestMethod.GET) // it is used as get as it shown when I type a
																		// url
	public String todoPage(ModelMap model) {
		
		model.put("todos", todoService.retrieveTodos("in28Minutes"));

		return "list-todos";

	}

}
