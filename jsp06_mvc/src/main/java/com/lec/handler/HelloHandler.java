package com.lec.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lec.command.CommandHandler;

public class HelloHandler implements CommandHandler  {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("result", "안녕하세요? 반갑습니다!!");
		return "/view/hello.jsp";
	}
}
