package com.lec.board.service;

import java.sql.Connection;

import com.lec.board.dao.BoardDAO;
import com.lec.board.vo.BoardBean;
import com.lec.db.JDBCUitility;
 
public class BoardModifyService {

	public boolean isBoardWriter(int bno, String pass) {

		boolean isWriter = false;
		Connection conn = JDBCUitility.getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		isWriter = boardDAO.isBoardWriter(bno, pass);
		return isWriter;
	}

	public boolean modifyBoard(BoardBean board) {
		boolean isModifySuccess = false;

		Connection conn = JDBCUitility.getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		int updateCount = boardDAO.updateBoard(board);

		if(updateCount>0) {
			JDBCUitility.commit(conn);
			JDBCUitility.close(conn, null, null);
			isModifySuccess = true;
		} else {
			JDBCUitility.rollback(conn);
		}
		return isModifySuccess;
	}
}
