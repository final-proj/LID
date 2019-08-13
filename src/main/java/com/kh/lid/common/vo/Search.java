package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;
import org.springframework.stereotype.Component;

@Component
public class Search implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8719136029570161658L;

	private int sNo;
	private String sKeyword;
	private Date sDate;
	
	public Search() {
		// TODO Auto-generated constructor stub
	}

	public Search(int sNo, String sKeyword, Date sDate) {
		super();
		this.sNo = sNo;
		this.sKeyword = sKeyword;
		this.sDate = sDate;
	}

	@Override
	public String toString() {
		return "Search [sNo=" + sNo + ", sKeyword=" + sKeyword + ", sDate=" + sDate + "]";
	}

	public int getsNo() {
		return sNo;
	}

	public void setsNo(int sNo) {
		this.sNo = sNo;
	}

	public String getsKeyword() {
		return sKeyword;
	}

	public void setsKeyword(String sKeyword) {
		this.sKeyword = sKeyword;
	}

	public Date getsDate() {
		return sDate;
	}

	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}
	
	
	
}
