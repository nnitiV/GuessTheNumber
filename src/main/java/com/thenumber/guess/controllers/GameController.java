package com.thenumber.guess.controllers;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class GameController {

	@RequestMapping("/easy")
	public String easyGame(Model model, HttpSession session) {
		model.addAttribute("isHomepage", false);
		model.addAttribute("message", "Great! You have selected the Easy difficulty level");
		session.setAttribute("attempts", "10");
		return "easy";
	}

	@RequestMapping("/normal")
	public String normalGame(Model model, HttpSession session) {
		model.addAttribute("isHomepage", false);
		model.addAttribute("message", "Nice! You have selected the Easy difficulty level");
		session.setAttribute("attempts", "5");
		return "normal";
	}

	@RequestMapping("/hard")
	public String hardGame(Model model, HttpSession session) {
		model.addAttribute("isHomepage", false);
		model.addAttribute("message", "Wow! You have selected the Hard difficulty level");
		session.setAttribute("attempts", "3");
		return "hard";
	}

	@RequestMapping("/start")
	public String startGame(Model model, @SessionAttribute int attempts, HttpSession session) {
		model.addAttribute("attempts", attempts);
		if (session.getAttribute("number") != null) {
			session.setAttribute("number", (new Random().nextInt(101) + 1));
		}
		System.out.println(session.getAttribute("number"));
		return "game";
	}

	@RequestMapping("/guess")
	public String guess(HttpSession session, @SessionAttribute int number, @SessionAttribute int attempts,
			@RequestParam int guess) {
		if (attempts < 2) {
			return "gameover";
		}
		if (guess == number) {
			return "redirect:/won";
		}
		session.setAttribute("attempts", --attempts);
		return "redirect:/start";
	}
	
	@RequestMapping("/won")
	public String won() {
		return "won";
	}
}
