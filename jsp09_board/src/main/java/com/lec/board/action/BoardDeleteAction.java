package com.lec.board.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lec.board.service.BoardDeleteService;
import com.lec.board.vo.ActionForward;

public class BoardDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) {

		ActionForward forward = null;
		boolean isWriter = false;
		boolean isDeleteSuccess = false;
 
		int bno = Integer.parseInt(req.getParameter("bno"));
		BoardDeleteService boardDeleteService = new BoardDeleteService();
		isWriter = boardDeleteService.isBoardWriter(bno, req.getParameter("pass"));

		if(isWriter) {
			isDeleteSuccess = boardDeleteService.deleteBoard(bno);

			if(isDeleteSuccess) {
				forward = new ActionForward();
				forward.setRedirect(true);
				forward.setPath("boardList.bo");
			} else {
				res.setContentType("text/html; charset=UTF-8");
				try {
					PrintWriter out = res.getWriter();
					out.println("<script>");
					out.println("   alert('게시글을 삭제에 실패했습니다!');");
					out.println("   history.back();");
					out.println("</script>");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} else {
			res.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = res.getWriter();
				out.println("<script>");
				out.println("   alert('게시글을 수정할 권한이 없습니다!');");
				out.println("   history.back();");
				out.println("</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return forward;
	}

}
