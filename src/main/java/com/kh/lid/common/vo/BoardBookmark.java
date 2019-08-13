package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;
import org.springframework.stereotype.Component;

@Component
public class BoardBookmark implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3786887798561295030L;

	private int bbNo;
	private int bbMno;
	private char bbMark;
	private Date bbDate;
	
	public BoardBookmark() {
		// TODO Auto-generated constructor stub
	}

	public BoardBookmark(int bbNo, int bbMno, char bbMark, Date bbDate) {
		super();
		this.bbNo = bbNo;
		this.bbMno = bbMno;
		this.bbMark = bbMark;
		this.bbDate = bbDate;
	}

	@Override
	public String toString() {
		return "BoardBookmark [bbNo=" + bbNo + ", bbMno=" + bbMno + ", bbMark=" + bbMark + ", bbDate=" + bbDate + "]";
	}

	public int getBbNo() {
		return bbNo;
	}

	public void setBbNo(int bbNo) {
		this.bbNo = bbNo;
	}

	public int getBbMno() {
		return bbMno;
	}

	public void setBbMno(int bbMno) {
		this.bbMno = bbMno;
	}

	public char getBbMark() {
		return bbMark;
	}

	public void setBbMark(char bbMark) {
		this.bbMark = bbMark;
	}

	public Date getBbDate() {
		return bbDate;
	}

	public void setBbDate(Date bbDate) {
		this.bbDate = bbDate;
	}
	
}
