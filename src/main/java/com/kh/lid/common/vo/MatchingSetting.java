package com.kh.lid.common.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class MatchingSetting implements Serializable {
	
	
	private static final long serialVersionUID = 4863374719091787756L;
	
	private int msNo;
	private int msMno;
	private int msDistance;
	private int msMinage;
	private int msMaxage;
	private char msGender;
	
	
	public MatchingSetting() {
		
	}


	public MatchingSetting(int msNo, int msMno, int msDistance, int msMinage, int msMaxage, char msGender) {
		super();
		this.msNo = msNo;
		this.msMno = msMno;
		this.msDistance = msDistance;
		this.msMinage = msMinage;
		this.msMaxage = msMaxage;
		this.msGender = msGender;
	}


	@Override
	public String toString() {
		return "MatchingSetting [msNo=" + msNo + ", msMno=" + msMno + ", msDistance=" + msDistance + ", msMinage="
				+ msMinage + ", msMaxage=" + msMaxage + ", msGender=" + msGender + "]";
	}


	public int getMsNo() {
		return msNo;
	}


	public void setMsNo(int msNo) {
		this.msNo = msNo;
	}


	public int getMsMno() {
		return msMno;
	}


	public void setMsMno(int msMno) {
		this.msMno = msMno;
	}


	public int getMsDistance() {
		return msDistance;
	}


	public void setMsDistance(int msDistance) {
		this.msDistance = msDistance;
	}


	public int getMsMinage() {
		return msMinage;
	}


	public void setMsMinage(int msMinage) {
		this.msMinage = msMinage;
	}


	public int getMsMaxage() {
		return msMaxage;
	}


	public void setMsMaxage(int msMaxage) {
		this.msMaxage = msMaxage;
	}


	public char getMsGender() {
		return msGender;
	}


	public void setMsGender(char msGender) {
		this.msGender = msGender;
	}
	
	
}
