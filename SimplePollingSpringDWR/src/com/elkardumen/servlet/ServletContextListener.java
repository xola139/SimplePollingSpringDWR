package com.elkardumen.servlet;

import javax.servlet.ServletContextEvent;


public class ServletContextListener {

	
	public void contextDestroyed(ServletContextEvent arg0) {
		
		
		System.out.println("Servlet conext destroyed");
	}

	
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("Servlet conext initialized .");
	}

	
}
