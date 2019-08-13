package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;
import org.springframework.stereotype.Component;

@Component
public class MemberTags implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4847707484257676294L;
	
	private int mtNo;
	private int mtBno;
	private int mtMno;
	private Date mtDate;
	
	public MemberTags() {
		// TODO Auto-generated constructor stub
	}

	public MemberTags(int mtNo, int mtBno, int mtMno, Date mtDate) {
		super();
		this.mtNo = mtNo;
		this.mtBno = mtBno;
		this.mtMno = mtMno;
		this.mtDate = mtDate;
	}

	@Override
	public String toString() {
		return "MemberTags [mtNo=" + mtNo + ", mtBno=" + mtBno + ", mtMno=" + mtMno + ", mtDate=" + mtDate + "]";
	}

	public int getMtNo() {
		return mtNo;
	}

	public void setMtNo(int mtNo) {
		this.mtNo = mtNo;
	}

	public int getMtBno() {
		return mtBno;
	}

	public void setMtBno(int mtBno) {
		this.mtBno = mtBno;
	}

	public int getMtMno() {
		return mtMno;
	}

	public void setMtMno(int mtMno) {
		this.mtMno = mtMno;
	}

	public Date getMtDate() {
		return mtDate;
	}

	public void setMtDate(Date mtDate) {
		this.mtDate = mtDate;
	}
	
}
