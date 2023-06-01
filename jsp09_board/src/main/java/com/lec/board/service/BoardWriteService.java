package com.lec.board.service;

import java.sql.Connection;

import com.lec.board.dao.BoardDAO;
import com.lec.board.vo.BoardBean;
import com.lec.db.JDBCUitility;
 
public class BoardWriteService {

	public boolean registerBoard(BoardBean board) {

		boolean isWriteSucess = false;

		Connection conn = JDBCUitility.getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		int insertCount = boardDAO.insertBoard(board);

		if(insertCount > 0) {
			JDBCUitility.commit(conn);
			JDBCUitility.close(conn, null, null);
			isWriteSucess = true;
		} else {
			JDBCUitility.rollback(conn);
		}
		return isWriteSucess;
	}
}
