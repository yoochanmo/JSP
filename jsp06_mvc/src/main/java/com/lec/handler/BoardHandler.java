package com.lec.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lec.command.CommandHandler;

public class BoardHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("board", "게시글이 성공적으로 등록되었습니다.");
		return "/view/board.jsp";
	}

}
