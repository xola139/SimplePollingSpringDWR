package com.elkardumen.service;



import org.directwebremoting.Browser;
import org.directwebremoting.ScriptSessions;

import com.elkardumen.bean.Usuario;
import com.google.gson.Gson;

public class HiloLog implements Runnable {
	private static boolean active = true;
	int count=0;
	Usuario user=new Usuario();
	public HiloLog() {
		new Thread(this).start();
	}
	
	public synchronized void arranca() {
	}

	@Override
	public void run() {
		
		while (active) {
			count++;
			try {

				Browser.withPage("/SimplePollingSpringDWR/pageInit.html",
					new Runnable() {
						public void run() {
							user.setId(String.valueOf(count));
							user.setFirstname("Nombre  "+ count);
							user.setLastname("LastName "+count);
							user.setLastname("Email "+count);
							user.setPassword("Password"+count);
							
							
					
								ScriptSessions.addFunctionCall("evento", new Gson().toJson(user));
						}
					}
				);
				
			} catch (Exception e1) {
				System.out.println("Excepcion al enviar mensaje. " + e1.getMessage());
			}
		
		try {
			Thread.sleep(5000L);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		System.out.println("Hilo terminado");
	}
	public static boolean isActive() {
		return active;
	}

	public static void setActive(boolean active) {
		HiloLog.active = active;
	}

}
