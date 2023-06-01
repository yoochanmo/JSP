package com.lec.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lec.board.service.BoardDetailService;
import com.lec.board.vo.ActionForward;
import com.lec.board.vo.BoardBean;

public class BoardReplyFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) {
		
		ActionForward forward = new ActionForward();
		int bno = Integer.parseInt(req.getParameter("bno"));
		BoardDetailService boardDetailService = new BoardDetailService();
		BoardBean board = boardDetailService.getBoard(bno);		
		
		req.setAttribute("board", board);
		forward.setPath("/board/board_reply.jsp");
		return forward;
	}

	
}
