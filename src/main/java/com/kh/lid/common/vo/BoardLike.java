package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class BoardLike implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5704395551870378107L;
	
	private int blNo;
	private int blBno;
	private int blMno;
	private int blChk;
	private Date blDate;
	
	public BoardLike() {
		// TODO Auto-generated constructor stub
	}

	public BoardLike(int blNo, int blBno, int blMno, int blChk, Date blDate) {
		super();
		this.blNo = blNo;
		this.blBno = blBno;
		this.blMno = blMno;
		this.blChk = blChk;
		this.blDate = blDate;
	}

	@Override
	public String toString() {
		return "BoardLike [blNo=" + blNo + ", blBno=" + blBno + ", blMno=" + blMno + ", blChk=" + blChk + ", blDate="
				+ blDate + "]";
	}

	public int getBlNo() {
		return blNo;
	}

	public void setBlNo(int blNo) {
		this.blNo = blNo;
	}

	public int getBlBno() {
		return blBno;
	}

	public void setBlBno(int blBno) {
		this.blBno = blBno;
	}

	public int getBlMno() {
		return blMno;
	}

	public void setBlMno(int blMno) {
		this.blMno = blMno;
	}

	public int getBlChk() {
		return blChk;
	}

	public void setBlChk(int blChk) {
		this.blChk = blChk;
	}

	public Date getBlDate() {
		return blDate;
	}

	public void setBlDate(Date blDate) {
		this.blDate = blDate;
	}
	
	
}
