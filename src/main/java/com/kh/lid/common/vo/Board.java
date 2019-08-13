package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Board implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1280036441590672378L;
	
	private int bNo;
	private String bContent;
	private int bMno;
	private Date bDate;
	private int bCount;
	
	// 가상 변수
    private String mpBNickname;
	
	private List<BoardImage> images
	  = new ArrayList<>();
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	

	public Board(int bNo, String bContent, int bMno, Date bDate, int bCount, List<BoardImage> images) {
		super();
		this.bNo = bNo;
		this.bContent = bContent;
		this.bMno = bMno;
		this.bDate = bDate;
		this.bCount = bCount;
		this.images = images;
	}

	public Board(String bContent, Date bDate, String mpBNickname) {
	      super();
	      this.bContent = bContent;
	      this.bDate = bDate;
	      this.setMpBNickname(mpBNickname);
	   }

	@Override
	public String toString() {
		return "Board [bNo=" + bNo + ", bContent=" + bContent + ", bMno=" + bMno + ", bDate=" + bDate + ", bCount="
				+ bCount + ", images=" + images + "]";
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public int getbMno() {
		return bMno;
	}

	public void setbMno(int bMno) {
		this.bMno = bMno;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}

	public List<BoardImage> getImages() {
		return images;
	}

	public void setImages(List<BoardImage> images) {
		this.images = images;
	}



	public String getMpBNickname() {
		return mpBNickname;
	}



	public void setMpBNickname(String mpBNickname) {
		this.mpBNickname = mpBNickname;
	}
	
	
}
