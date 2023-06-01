package com.lec.board.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lec.board.service.BoardListService;
import com.lec.board.vo.ActionForward;
import com.lec.board.vo.BoardBean;
import com.lec.board.vo.PageInfo;

public class BoardListAction implements Action{
 
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) {

		List<BoardBean> boardList = new ArrayList<>();
		
		int page = 1;
		int limit = 10;
		
		int p = page;
		String f = "";
		String q = "";
		
		if(req.getParameter("p") != null) p = Integer.parseInt(req.getParameter("p"));
		if(req.getParameter("f") != null) f = req.getParameter("f"); else f = "writer";
		if(req.getParameter("q") != null) q = req.getParameter("q");

		// 게시글목록을 가져올 서비스
		BoardListService boardListService = new BoardListService();
		int listCount = boardListService.getListCount(f, q);
		boardList = boardListService.getBoardList(p, limit, f, q);
		
		// 총페이지수
		int totalPage = (int)((double)listCount / limit + 0.95);
		
		// 현재페이지의 시작페이지수(1~100)
		int startPage = (p-1) / 10 * 10 + 1;
		
		// 현재페이지의 마지막페이지수
		int endPage = startPage + 9;
		endPage = endPage > totalPage ? (totalPage > 0 ? totalPage : 1) : endPage;
		
		PageInfo pageInfo = new PageInfo();
		pageInfo.setListCount(listCount);
		pageInfo.setPage(page);
		pageInfo.setTotalPage(totalPage);
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
				
		req.setAttribute("pageInfo", pageInfo);
		req.setAttribute("boardList", boardList);

		ActionForward forward = new ActionForward();
		forward.setPath("/board/board_list.jsp?p=" + p + "&f=" + f + "&q=" + q);
		return forward;
	}
}
