package org.study.sample.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.study.sample.service.GameService;

@Controller
public class GameController {
	
	@Autowired
	private GameService gameService;
	
	@PostMapping("/gamepay")
	public String gamepay(@RequestParam("sellcount") int sellcount) {
		return "/";
	}
	
	@PostMapping("/test")
	public String test(@RequestParam("test") int test) {
		System.out.println(test);
		return "/";
	}
}
