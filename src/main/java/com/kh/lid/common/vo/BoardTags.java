package com.kh.lid.common.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class BoardTags implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4109563230065875095L;
	
	private int btNo;
	private int btBno;
	private String btContent;
	private int btBcno;
	
	public BoardTags() {
		// TODO Auto-generated constructor stub
	}

	public BoardTags(int btNo, int btBno, String btContent, int btBcno) {
		super();
		this.btNo = btNo;
		this.btBno = btBno;
		this.btContent = btContent;
		this.btBcno = btBcno;
	}

	@Override
	public String toString() {
		return "BoardTags [btNo=" + btNo + ", btBno=" + btBno + ", btContent=" + btContent + ", btBcno=" + btBcno + "]";
	}

	public int getBtNo() {
		return btNo;
	}

	public void setBtNo(int btNo) {
		this.btNo = btNo;
	}

	public int getBtBno() {
		return btBno;
	}

	public void setBtBno(int btBno) {
		this.btBno = btBno;
	}

	public String getBtContent() {
		return btContent;
	}

	public void setBtContent(String btContent) {
		this.btContent = btContent;
	}

	public int getBtBcno() {
		return btBcno;
	}

	public void setBtBcno(int btBcno) {
		this.btBcno = btBcno;
	}
	
}
