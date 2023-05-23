package com.lec.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// localhost:8088/jsp04_servlet
// 1 . /now, /curr, /zzz/임의의문자.
// 2 . ?user=root&pass=12345
@WebServlet(urlPatterns = {"/now","/curr","/zzz/="},
			initParams = {@WebInitParam(name="user",value="root"),
					@WebInitParam(name="pass",value="12345"),
}
		)


public class CurrentTime extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		out.println("<html>");
		out.println("<head><title>현재시간</title></head>");
		out.println("<body>");
		out.println("<h1>안녕하세요? JSP/Servelet!!!</h1>");
		out.println("<h1>doGet() 호출!!!</h1>");
		
		out.println("<h1>현재시간</h1>");
		out.println("<h3>" + new Date() + "</h3><hr>");
		
		out.println("<h1>초기파라미터(@WebInitParam)</h1>");
		out.println("<h3> user = " + getInitParameter("user") +"</h3>");
		out.println("<h3> pass = " + getInitParameter("pass") +"</h3>");
		
		
		out.println("</body>");
		out.println("</html>");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req,res);
	}
}
