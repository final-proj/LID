package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Timestamp;

import org.springframework.stereotype.Component;

@Component
   public class Payment implements Serializable{

   /**
	 * 
	 */
	private static final long serialVersionUID = 2694436251419257839L;
	
	  private int pNo;
      private Timestamp pDate;
      private Timestamp pODate;
      private int pTicket;
      private int pMno;
      // 가상 변수 ( 결제 만료일 사용내역을 확인하기 위해  사용중/ 사용지남 )
      private int pStatus;
      
      
      public Payment() {
         
      }

	public Payment(int pNo, Timestamp pDate, Timestamp pODate, int pTicket, int pMno ,int pStatus) {
		super();
		this.pNo = pNo;
		this.pDate = pDate;
		this.pODate = pODate;
		this.pTicket = pTicket;
		this.pMno = pMno;
		this.pStatus = pStatus;
	}

	public Payment(int pTicket, int pMno) {
		super();
		this.pTicket = pTicket;
		this.pMno = pMno;
	}

	

	@Override
	public String toString() {
		return "Payment [pNo=" + pNo + ", pDate=" + pDate + ", pODate=" + pODate + ", pTicket=" + pTicket + ", pMno="
				+ pMno + ", pStatus=" + pStatus + "]";
	}


	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public Timestamp getpDate() {
		return pDate;
	}

	public void setpDate(Timestamp pDate) {
		this.pDate = pDate;
	}

	public Timestamp getpODate() {
		return pODate;
	}

	public void setpODate(Timestamp pODate) {
		this.pODate = pODate;
	}

	public int getpTicket() {
		return pTicket;
	}

	public void setpTicket(int pTicket) {
		this.pTicket = pTicket;
	}

	public int getpMno() {
		return pMno;
	}

	public void setpMno(int pMno) {
		this.pMno = pMno;
	}

	public int getpStatus() {
		return pStatus;
	}

	public void setpStatus(int pStatus) {
		this.pStatus = pStatus;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
      
      
}