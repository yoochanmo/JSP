package com.lec.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lec.command.CommandHandler;
import com.lec.handler.NullHandler;

public class ControllerUsingURI extends HttpServlet{

	private Map<String, CommandHandler> handler = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		String controllerFile = getInitParameter("controllerURI");
		String controllerFilePath = getServletContext().getRealPath(controllerFile);
		 System.out.println(controllerFile);
		 System.out.println(controllerFilePath);
		 
		Properties prop = new Properties();
		
		try(FileReader fis = new FileReader(controllerFilePath)) {
			prop.load(fis);
		} catch (Exception e) {
			throw new ServletException();
		}
		Iterator key = prop.keySet().iterator();
		while(key.hasNext()) {
			String command = (String) key.next();  		  //hello.do 
			String className = prop.getProperty(command); // com.lec.handler.HelloHandler
//			System.out.println(command + "=" + className);
			
			try {
				Class<?> handlerClass = Class.forName(className);
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				handler.put(command, handlerInstance);
				// {hello=com.lec.handler.HelloHandler, ... }
			} catch (Exception e) {
				throw new ServletException();
			}
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(req, res);
	}
	//localhost:8088/jsp06_mvc/hello.do
	
	private void process(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException {
		String view_page = "";
		// hello.do, member.do, board.do
		String cmd = req.getRequestURI();
		if(cmd.indexOf(req.getContextPath()) == 0) {
			cmd = cmd.substring(req.getContextPath().length());
		}
		//System.out.println(req.getContextPath()); /jsp06_mvc
		//System.out.println(cmd);                   /*.do
		
		CommandHandler command = handler.get(cmd);
		
		if(command == null) command = new NullHandler();
		try {
			view_page = command.process(req, res);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(view_page !=null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher(view_page);
			dispatcher.forward(req, res);
		}
		
		
	}
}
