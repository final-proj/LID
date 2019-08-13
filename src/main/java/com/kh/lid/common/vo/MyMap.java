package com.kh.lid.common.vo;

import java.io.Serializable;
import org.springframework.stereotype.Component;

@Component
public class MyMap implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4524516861548227557L;

	private int mmNo;
	private int mmMno;
	private String mmPinImg;
	private String mmCImg;
	
	public MyMap() {
		// TODO Auto-generated constructor stub
	}

	public MyMap(int mmNo, int mmMno, String mmPinImg, String mmCImg) {
		super();
		this.mmNo = mmNo;
		this.mmMno = mmMno;
		this.mmPinImg = mmPinImg;
		this.mmCImg = mmCImg;
	}

	@Override
	public String toString() {
		return "MyMap [mmNo=" + mmNo + ", mmMno=" + mmMno + ", mmPinImg=" + mmPinImg + ", mmCImg=" + mmCImg + "]";
	}

	public int getMmNo() {
		return mmNo;
	}

	public void setMmNo(int mmNo) {
		this.mmNo = mmNo;
	}

	public int getMmMno() {
		return mmMno;
	}

	public void setMmMno(int mmMno) {
		this.mmMno = mmMno;
	}

	public String getMmPinImg() {
		return mmPinImg;
	}

	public void setMmPinImg(String mmPinImg) {
		this.mmPinImg = mmPinImg;
	}

	public String getMmCImg() {
		return mmCImg;
	}

	public void setMmCImg(String mmCImg) {
		this.mmCImg = mmCImg;
	}
	
	
	
}
