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

/*
	커맨드패턴 기반의 프로그램(MVC Model2)
	
	MVC(Model, View, Controller)패턴에서 Controller역할을 수행하는 작업은 사용자가
	요청한 내용을 분석해서 요청에 맞는 작업(응답)이 무엇인지를 분석하는 역할을 한다.
	사용자의 요청을 판단하기 위해서 사용하는 방법이 여러가지가 있는데 가장 일반적인
	방법은 명령어를 사용하는 것이다.
	
	예를 들어 사용자가 게시판목록보기, 글쓰기등의 명령을 컨트롤러역할을 하는 서블릿에
	전달하고 컨트롤러 서블릿은 사용자가 요청에 해당하는 기능을 수행하는 View(jsp or html)
	를 통해 결과를 보여주는 패턴을 커맨드패턴이라고 한다.
	
	커맨드패턴에서 파라미터에 명령을 전달하는 방법은 2가지가 있다.
	
	1. 특정 이름의 파라미터에 명령을 전달하는 방법(ControllerUsingFile.properties)
	   
	   ... http://localhost:8088/jsp06_mvc/file
	 
	2. 요청되는 URI자체를 명령어로 사용하는 방법(ControllerUsingURI.properties)
	
	   ... http://localhost:8088/jsp06_mvc/yyy.do
*/
public class ControllerUsingFile extends HttpServlet {

	// 커맨드패턴 : key는 요청(hello, board..) value는 실행할 핸들러역할의 객체
	private Map<String, CommandHandler> handler = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		String controllerFile = getInitParameter("controllerFile");
		String controllerFilePath = getServletContext().getRealPath(controllerFile);
		// System.out.println(controllerFile);
		// System.out.println(controllerFilePath);
		
		Properties prop = new Properties();
		
		try(FileReader fis = new FileReader(controllerFilePath)) {
			prop.load(fis);
		} catch (Exception e) {
			throw new ServletException();
		}
		
		Iterator key = prop.keySet().iterator();
		while(key.hasNext()) {
			String command = (String) key.next();          // hello
			String className = prop.getProperty(command);  // com.lec.handler.HelloHandler
			System.out.println(command + "=" + className);
			
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
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		process(req, res);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		process(req, res);
	}

	// http://localhost:8088/jsp06_mvc/file?cmd=hello
	private void process(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {	
		
		String view_page = "";
		// cmd : hello, member, board
		String cmd = req.getParameter("cmd");
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




















