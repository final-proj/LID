package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;
import org.springframework.stereotype.Component;

@Component
public class QComment implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1193466337620872833L;

	private int qcNo;
	private int qcQno;
	private String qcComment;
	private Date qcDate;
	
	public QComment() {
		// TODO Auto-generated constructor stub
	}

	public QComment(int qcNo, int qcQno, String qcComment, Date qcDate) {
		super();
		this.qcNo = qcNo;
		this.qcQno = qcQno;
		this.qcComment = qcComment;
		this.qcDate = qcDate;
	}

	@Override
	public String toString() {
		return "QComment [qcNo=" + qcNo + ", qcQno=" + qcQno + ", qcComment=" + qcComment + ", qcDate=" + qcDate + "]";
	}

	public int getQcNo() {
		return qcNo;
	}

	public void setQcNo(int qcNo) {
		this.qcNo = qcNo;
	}

	public int getQcQno() {
		return qcQno;
	}

	public void setQcQno(int qcQno) {
		this.qcQno = qcQno;
	}

	public String getQcComment() {
		return qcComment;
	}

	public void setQcComment(String qcComment) {
		this.qcComment = qcComment;
	}

	public Date getQcDate() {
		return qcDate;
	}

	public void setQcDate(Date qcDate) {
		this.qcDate = qcDate;
	}
	
	
	
}
