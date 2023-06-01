package com.lec.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lec.board.vo.ActionForward;

public interface Action {
	
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res);
}
