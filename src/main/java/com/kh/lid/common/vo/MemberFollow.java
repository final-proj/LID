package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;
import org.springframework.stereotype.Component;

@Component
public class MemberFollow implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8789777192060040365L;
	
	private int mfNo;
	private int mfMyMno;
	private int mfFollowMno;
	private Date mfDate;
	
	public MemberFollow() {
		// TODO Auto-generated constructor stub
	}

	public MemberFollow(int mfNo, int mfMyMno, int mfFollowMno, Date mfDate) {
		super();
		this.mfNo = mfNo;
		this.mfMyMno = mfMyMno;
		this.mfFollowMno = mfFollowMno;
		this.mfDate = mfDate;
	}

	@Override
	public String toString() {
		return "MemberFollow [mfNo=" + mfNo + ", mfMyMno=" + mfMyMno + ", mfFollowMno=" + mfFollowMno + ", mfDate="
				+ mfDate + "]";
	}

	public int getMfNo() {
		return mfNo;
	}

	public void setMfNo(int mfNo) {
		this.mfNo = mfNo;
	}

	public int getMfMyMno() {
		return mfMyMno;
	}

	public void setMfMyMno(int mfMyMno) {
		this.mfMyMno = mfMyMno;
	}

	public int getMfFollowMno() {
		return mfFollowMno;
	}

	public void setMfFollowMno(int mfFollowMno) {
		this.mfFollowMno = mfFollowMno;
	}

	public Date getMfDate() {
		return mfDate;
	}

	public void setMfDate(Date mfDate) {
		this.mfDate = mfDate;
	}
	
}
