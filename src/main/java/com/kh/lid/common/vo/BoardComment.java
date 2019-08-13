package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class BoardComment implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2330735363454680750L;
	
	private int bcNo;
	private int bcBno;
	private int bcMno;
	private String bcContent;
	private Date bcDate;
	
	public BoardComment() {
		// TODO Auto-generated constructor stub
	}

	public BoardComment(int bcNo, int bcBno, int bcMno, String bcContent, Date bcDate) {
		super();
		this.bcNo = bcNo;
		this.bcBno = bcBno;
		this.bcMno = bcMno;
		this.bcContent = bcContent;
		this.bcDate = bcDate;
	}

	@Override
	public String toString() {
		return "BoardComment [bcNo=" + bcNo + ", bcBno=" + bcBno + ", bcMno=" + bcMno + ", bcContent=" + bcContent
				+ ", bcDate=" + bcDate + "]";
	}

	public int getBcNo() {
		return bcNo;
	}

	public void setBcNo(int bcNo) {
		this.bcNo = bcNo;
	}

	public int getBcBno() {
		return bcBno;
	}

	public void setBcBno(int bcBno) {
		this.bcBno = bcBno;
	}

	public int getBcMno() {
		return bcMno;
	}

	public void setBcMno(int bcMno) {
		this.bcMno = bcMno;
	}

	public String getBcContent() {
		return bcContent;
	}

	public void setBcContent(String bcContent) {
		this.bcContent = bcContent;
	}

	public Date getBcDate() {
		return bcDate;
	}

	public void setBcDate(Date bcDate) {
		this.bcDate = bcDate;
	}
	
}
