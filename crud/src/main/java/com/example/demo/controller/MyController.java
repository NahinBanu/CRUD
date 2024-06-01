package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.model.MyModel;
import com.example.demo.service.MyService;

@Controller
public class MyController {
	@Autowired
	MyService service;
	@GetMapping("/")
	public String welcome() {
		return "index";
	}
	@GetMapping("/reg")
		public String register(@ModelAttribute MyModel model ) {
		service.save(model);
			return "reg";
		}
	@GetMapping("/details")
	public String details(Model model) {
		List<MyModel> read = service.read();
		System.out.println(read);
		model.addAttribute("fetch", read);
		return "details";
	}
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable int id,Model model) {
   
		MyModel edit = service.edit(id);
		model.addAttribute("edit", edit);
		return "editform";
	}	
	@GetMapping(value="/update")
	public String update(@ModelAttribute MyModel mymodel ) {
	System.out.println(mymodel);
		service.update(mymodel);
		return "updatesuccessful";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		service.delete(id);
		return "delete";

	}
	}