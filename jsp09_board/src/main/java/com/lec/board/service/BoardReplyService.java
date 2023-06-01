package com.lec.board.service;

import java.sql.Connection;

import com.lec.board.dao.BoardDAO;
import com.lec.board.vo.BoardBean;
import com.lec.db.JDBCUitility;

public class BoardReplyService {

	public boolean replyBoard(BoardBean board) {
		
		boolean isReplySucess = false;
		
		Connection conn = JDBCUitility.getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);		
		int insertCount = boardDAO.insertReplyBoard(board);
		
		if(insertCount > 0) {
			JDBCUitility.commit(conn);
			JDBCUitility.close(conn, null, null);
			isReplySucess = true;
		} else {
			JDBCUitility.rollback(conn);
		}		
		
		return isReplySucess;
	}

}
