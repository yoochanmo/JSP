package com.lec.servlet;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServletListener implements ServletContextListener {
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// 개발자가 초기화하고 싶은 로직을 구현
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// Listener이 종료가 될 때 개발자가 구현할 로직을 구현
	}
}
