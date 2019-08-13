package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;
import org.springframework.stereotype.Component;

@Component
public class Question implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4590183342518334569L;

	private int qNo; // 문의번호
	private int qMno; // 회원 번호
	private String qTitle; // 문의 제목
	private String qCategory; // 문의 카테고리
	private String qContent; // 문의 내용
	private Date qDate; // 문의 작성일자
	private String qAnswer; //문의 답변
	
	public Question() {
		// TODO Auto-generated constructor stub
	}

	public Question(int qNo, int qMno, String qTitle, String qCategory, String qContent, Date qDate, String qAnswer) {
		super();
		this.qNo = qNo;
		this.qMno = qMno;
		this.qTitle = qTitle;
		this.qCategory = qCategory;
		this.qContent = qContent;
		this.qDate = qDate;
		this.qAnswer = qAnswer;
	}

	@Override
	public String toString() {
		return "Question [qNo=" + qNo + ", qMno=" + qMno + ", qTitle=" + qTitle + ", qCategory=" + qCategory
				+ ", qContent=" + qContent + ", qDate=" + qDate + ", qAnswer=" + qAnswer + "]";
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public int getqMno() {
		return qMno;
	}

	public void setqMno(int qMno) {
		this.qMno = qMno;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqCategory() {
		return qCategory;
	}

	public void setqCategory(String qCategory) {
		this.qCategory = qCategory;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public Date getqDate() {
		return qDate;
	}

	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}

	public String getqAnswer() {
		return qAnswer;
	}

	public void setqAnswer(String qAnswer) {
		this.qAnswer = qAnswer;
	}
	
	

}