package newx.listener;


import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class NewXConfiguration implements ServletContextListener {
	
	private static ServletContext context;
	private static WebApplicationContext springContext;
	
	public void contextInitialized(ServletContextEvent evt) {
		context = evt.getServletContext(); 
		springContext = WebApplicationContextUtils.getWebApplicationContext(context);
	}

	public void contextDestroyed(ServletContextEvent evt) {
	}
	
	public static ServletContext getContext() {
		return context;
	}

	public static WebApplicationContext getSpringContext() {
		return springContext;
	}
}