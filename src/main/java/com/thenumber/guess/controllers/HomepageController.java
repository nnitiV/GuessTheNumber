package com.thenumber.guess.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomepageController {
	@GetMapping
	public String doGet(Model model) {
		model.addAttribute("isHomepage", true);
		return "homepage";
	}
}
