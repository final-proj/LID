package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;
import org.springframework.stereotype.Component;

@Component
public class Messenger implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6952837048492266161L;

	private int msgNo;
	private int msgReciver;
	private int msgSender;
	private String msgContent;
	private Date msgSendDate;
	private char msgRead;
	
	public Messenger() {
		// TODO Auto-generated constructor stub
	}

	public Messenger(int msgNo, int msgReciver, int msgSender, String msgContent, Date msgSendDate, char msgRead) {
		super();
		this.msgNo = msgNo;
		this.msgReciver = msgReciver;
		this.msgSender = msgSender;
		this.msgContent = msgContent;
		this.msgSendDate = msgSendDate;
		this.msgRead = msgRead;
	}

	@Override
	public String toString() {
		return "Messenger [msgNo=" + msgNo + ", msgReciver=" + msgReciver + ", msgSender=" + msgSender + ", msgContent="
				+ msgContent + ", msgSendDate=" + msgSendDate + ", msgRead=" + msgRead + "]";
	}

	public int getMsgNo() {
		return msgNo;
	}

	public void setMsgNo(int msgNo) {
		this.msgNo = msgNo;
	}

	public int getMsgReciver() {
		return msgReciver;
	}

	public void setMsgReciver(int msgReciver) {
		this.msgReciver = msgReciver;
	}

	public int getMsgSender() {
		return msgSender;
	}

	public void setMsgSender(int msgSender) {
		this.msgSender = msgSender;
	}

	public String getMsgContent() {
		return msgContent;
	}

	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}

	public Date getMsgSendDate() {
		return msgSendDate;
	}

	public void setMsgSendDate(Date msgSendDate) {
		this.msgSendDate = msgSendDate;
	}

	public char getMsgRead() {
		return msgRead;
	}

	public void setMsgRead(char msgRead) {
		this.msgRead = msgRead;
	}
	
	
	
	
	
}
