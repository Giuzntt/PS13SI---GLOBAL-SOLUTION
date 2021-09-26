package br.com.ps13si.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/inicio")
	public ModelAndView homePage() {
	    return new ModelAndView("inicio");
	}
	
}
