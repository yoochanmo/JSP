package com.lec.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// System.out.println("init() 메서드호출");
	}
	
	
	@Override // http://localhost:8088/jsp07_filter/login/
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		// System.out.println("doFilter() 메서드호출");
		// jsp02_login_form.jsp
		
		HttpServletRequest httpreq = (HttpServletRequest) req;
		HttpSession sess = httpreq.getSession();
		
		boolean login = false;
		if(sess != null) {
			if(sess.getAttribute("member") != null) login = true;
		}
		if(login) {
			chain.doFilter(req, res);
		}else {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/login/jsp02_login_form.jsp");
			dispatcher.forward(req, res);
		}
	}

}
