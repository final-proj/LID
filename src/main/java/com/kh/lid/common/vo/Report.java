package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;
import org.springframework.stereotype.Component;

@Component
public class Report implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 9189815451017567498L;

	private int rNo;
	private int rReporter;
	private int rMember;
	private String rContent;
	private Date rDate;
	
	public Report() {
		// TODO Auto-generated constructor stub
	}

	public Report(int rNo, int rReporter, int rMember, String rContent, Date rDate) {
		super();
		this.rNo = rNo;
		this.rReporter = rReporter;
		this.rMember = rMember;
		this.rContent = rContent;
		this.rDate = rDate;
	}

	@Override
	public String toString() {
		return "Report [rNo=" + rNo + ", rReporter=" + rReporter + ", rMember=" + rMember + ", rContent=" + rContent
				+ ", rDate=" + rDate + "]";
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public int getrReporter() {
		return rReporter;
	}

	public void setrReporter(int rReporter) {
		this.rReporter = rReporter;
	}

	public int getrMember() {
		return rMember;
	}

	public void setrMember(int rMember) {
		this.rMember = rMember;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public Date getrDate() {
		return rDate;
	}

	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	
	
	
	
	
}
