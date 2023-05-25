package com.lec.simple;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/simple")
public class SimpleController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		processRequest(req, res);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		processRequest(req, res);
	}

	private void processRequest(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {	
		
		// localhost:8088/jsp06_mvc/simple?t=????
		String t = req.getParameter("t");
		String view_jsp = "";
		
		if(t.equals("i")) {
			// System.out.println("insert into ....");
			view_jsp = "insert.jsp";
			Board board = new Board(1, "글제목1", "홍길동", "글내용", 1, new Date());
			req.setAttribute("board", board);
		} else if(t.equals("s")) {
			// System.out.println("select * from .....");
			view_jsp = "select.jsp";
		} else if(t.equals("d")) {
			view_jsp = "delete.jsp";
			// System.out.println("delete from .....");
		} else if(t.equals("u")) {
			// System.out.println("update .....");
			view_jsp = "update.jsp";
		} else {
			view_jsp = "simple_view.jsp";
			req.setAttribute("result", "안녕하세요? 반갑습니다");
			req.setAttribute("now", new Date());
			req.setAttribute("user", "root");
			req.setAttribute("pass", "12345");
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(view_jsp);
		dispatcher.forward(req, res);
	}
}

class Board {

	private int bno;
    private String subject;
    private String writer;
    private String content;
    private int readcnt;
    private Date crtdate;
	public Board(int bno, String subject, String writer, String content, int readcnt, Date crtdate) {
		super();
		this.bno = bno;
		this.subject = subject;
		this.writer = writer;
		this.content = content;
		this.readcnt = readcnt;
		this.crtdate = crtdate;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public Date getCrtdate() {
		return crtdate;
	}
	public void setCrtdate(Date crtdate) {
		this.crtdate = crtdate;
	}
	@Override
	public String toString() {
		return "Board [bno=" + bno + ", subject=" + subject + ", writer=" + writer + "]";
	}
}






