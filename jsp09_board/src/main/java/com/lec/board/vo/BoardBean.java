package com.lec.board.vo;

import java.util.Date;
import java.util.Objects;
 
public class BoardBean {

	private int bno;
	private String writer;
	private String pass;
	private String subject;
	private String content;
	private String file;
	private int re_ref;
	private int re_lev;
	private int re_seq;
	private int readcount;
	private Date crtdate;

	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public int getRe_ref() {
		return re_ref;
	}
	public void setRe_ref(int re_ref) {
		this.re_ref = re_ref;
	}
	public int getRe_lev() {
		return re_lev;
	}
	public void setRe_lev(int re_lev) {
		this.re_lev = re_lev;
	}
	public int getRe_seq() {
		return re_seq;
	}
	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Date getCrtdate() {
		return crtdate;
	}
	public void setCrtdate(Date crtdate) {
		this.crtdate = crtdate;
	}
	@Override
	public String toString() {
		return "BoardBean [bno=" + bno + ", writer=" + writer + ", subject=" + subject + ", content=" + content
				+ ", readcount=" + readcount + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(bno, content, crtdate, file, pass, re_lev, re_ref, re_seq, readcount, subject, writer);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if ((obj == null) || (getClass() != obj.getClass()))
			return false;
		BoardBean other = (BoardBean) obj;
		return bno == other.bno && Objects.equals(content, other.content) && Objects.equals(crtdate, other.crtdate)
				&& Objects.equals(file, other.file) && Objects.equals(pass, other.pass) && re_lev == other.re_lev
				&& re_ref == other.re_ref && re_seq == other.re_seq && readcount == other.readcount
				&& Objects.equals(subject, other.subject) && Objects.equals(writer, other.writer);
	}
}
