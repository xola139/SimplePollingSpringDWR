SimplePollingSpringDWR
======================

Proyecto que muestra el uso del polling con Spring y DWR como framework


Vista del grid utilizando polling DWR:

![Settings Window](https://raw.githubusercontent.com/xola139/SimplePollingSpringDWR/master/SimplePollingSpringDWR/WebContent/images/review.png)


Simple y sencillo, para verlo en accion solo clona el proyecto o descargalo, importar el poyecto al IDE favorito y realiza el test en http://127.0.0.1:8080/SimplePollingSpringDWR/pageInit.html

la clave este en el uso de 

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
				
	Saludos espero sea de utilidad 
