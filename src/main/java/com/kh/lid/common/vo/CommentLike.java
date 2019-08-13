package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class CommentLike implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3129208643706445141L;
	
	private int clNo;
	private int clBcno;
	private char clAble;
	private Date clDate;
	
	public CommentLike() {
		// TODO Auto-generated constructor stub
	}

	public CommentLike(int clNo, int clBcno, char clAble, Date clDate) {
		super();
		this.clNo = clNo;
		this.clBcno = clBcno;
		this.clAble = clAble;
		this.clDate = clDate;
	}

	@Override
	public String toString() {
		return "CommentLike [clNo=" + clNo + ", clBcno=" + clBcno + ", clAble=" + clAble + ", clDate=" + clDate + "]";
	}

	public int getClNo() {
		return clNo;
	}

	public void setClNo(int clNo) {
		this.clNo = clNo;
	}

	public int getClBcno() {
		return clBcno;
	}

	public void setClBcno(int clBcno) {
		this.clBcno = clBcno;
	}

	public char getClAble() {
		return clAble;
	}

	public void setClAble(char clAble) {
		this.clAble = clAble;
	}

	public Date getClDate() {
		return clDate;
	}

	public void setClDate(Date clDate) {
		this.clDate = clDate;
	}
	
	
}
