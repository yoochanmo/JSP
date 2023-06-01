package com.lec.board.service;
 
import java.sql.Connection;

import com.lec.board.dao.BoardDAO;
import com.lec.db.JDBCUitility;

public class BoardDeleteService {

	public boolean isBoardWriter(int bno, String pass) {

		boolean isWriter = false;
		Connection conn = JDBCUitility.getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		isWriter = boardDAO.isBoardWriter(bno, pass);
		return isWriter;
	}

	public boolean deleteBoard(int bno) {

		boolean isDeleteSuccess = false;

		Connection conn = JDBCUitility.getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		int deleteCount = boardDAO.deleteBoard(bno);

		if(deleteCount>0) {
			JDBCUitility.commit(conn);
			JDBCUitility.close(conn, null, null);
			isDeleteSuccess = true;
		} else {
			JDBCUitility.rollback(conn);
		}
		return isDeleteSuccess;
	}
}
