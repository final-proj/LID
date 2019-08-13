package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Block implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6695493391604768254L;
	
	private int blkNo;
	private int blkMno;
	private int blkedMno;
	private Date blkDate;
	private String blkName;
	private String blkEmail;
	
	public Block() {
		// TODO Auto-generated constructor stub
	}

	public Block(int blkNo, int blkMno, int blkedMno, Date blkDate) {
		super();
		this.blkNo = blkNo;
		this.blkMno = blkMno;
		this.blkedMno = blkedMno;
		this.blkDate = blkDate;
	}
	
	
	

	@Override
	public String toString() {
		return "Block [blkNo=" + blkNo + ", blkMno=" + blkMno + ", blkedMno=" + blkedMno + ", blkDate=" + blkDate
				+ ", blkName=" + blkName + ", blkEmail=" + blkEmail + "]";
	}

	
	
	public String getBlkName() {
		return blkName;
	}

	public void setBlkName(String blkName) {
		this.blkName = blkName;
	}

	public String getBlkEmail() {
		return blkEmail;
	}

	public void setBlkEmail(String blkEmail) {
		this.blkEmail = blkEmail;
	}

	public int getBlkNo() {
		return blkNo;
	}

	public void setBlkNo(int blkNo) {
		this.blkNo = blkNo;
	}

	public int getBlkMno() {
		return blkMno;
	}

	public void setBlkMno(int blkMno) {
		this.blkMno = blkMno;
	}

	public int getBlkedMno() {
		return blkedMno;
	}

	public void setBlkedMno(int blkedMno) {
		this.blkedMno = blkedMno;
	}

	public Date getBlkDate() {
		return blkDate;
	}

	public void setBlkDate(Date blkDate) {
		this.blkDate = blkDate;
	}
	
}
