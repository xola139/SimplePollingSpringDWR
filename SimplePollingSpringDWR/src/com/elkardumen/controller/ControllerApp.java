package com.elkardumen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerApp {

	@RequestMapping("/pageInit.html")
	    public String logTasPage() {
			
	    	return "paginaInicial";
	}    
	    
	
}
