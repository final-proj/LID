package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;
import org.springframework.stereotype.Component;

@Component
public class Advertisement implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7605079325161483944L;
	
	private int adNo;
	private int adBno;
	private String adUrl;
	private int adClickCount;
	private int adTimePrice;
	private int adClickPrice;
	private int adViewCount;
	private char adAble;
	private char adNot;
	private Date adStartDate;
	private Date adEndDate;
	
	public Advertisement() {
		// TODO Auto-generated constructor stub
	}

	public Advertisement(int adNo, int adBno, String adUrl, int adClickCount, int adTimePrice, int adClickPrice,
			int adViewCount, char adAble, char adNot, Date adStartDate, Date adEndDate) {
		super();
		this.adNo = adNo;
		this.adBno = adBno;
		this.adUrl = adUrl;
		this.adClickCount = adClickCount;
		this.adTimePrice = adTimePrice;
		this.adClickPrice = adClickPrice;
		this.adViewCount = adViewCount;
		this.adAble = adAble;
		this.adNot = adNot;
		this.adStartDate = adStartDate;
		this.adEndDate = adEndDate;
	}

	public int getAdNo() {
		return adNo;
	}

	public void setAdNo(int adNo) {
		this.adNo = adNo;
	}

	public int getAdBno() {
		return adBno;
	}

	public void setAdBno(int adBno) {
		this.adBno = adBno;
	}

	public String getAdUrl() {
		return adUrl;
	}

	public void setAdUrl(String adUrl) {
		this.adUrl = adUrl;
	}

	public int getAdClickCount() {
		return adClickCount;
	}

	public void setAdClickCount(int adClickCount) {
		this.adClickCount = adClickCount;
	}

	public int getAdTimePrice() {
		return adTimePrice;
	}

	public void setAdTimePrice(int adTimePrice) {
		this.adTimePrice = adTimePrice;
	}

	public int getAdClickPrice() {
		return adClickPrice;
	}

	public void setAdClickPrice(int adClickPrice) {
		this.adClickPrice = adClickPrice;
	}

	public int getAdViewCount() {
		return adViewCount;
	}

	public void setAdViewCount(int adViewCount) {
		this.adViewCount = adViewCount;
	}

	public char getAdAble() {
		return adAble;
	}

	public void setAdAble(char adAble) {
		this.adAble = adAble;
	}

	public char getAdNot() {
		return adNot;
	}

	public void setAdNot(char adNot) {
		this.adNot = adNot;
	}

	public Date getAdStartDate() {
		return adStartDate;
	}

	public void setAdStartDate(Date adStartDate) {
		this.adStartDate = adStartDate;
	}

	public Date getAdEndDate() {
		return adEndDate;
	}

	public void setAdEndDate(Date adEndDate) {
		this.adEndDate = adEndDate;
	}

	@Override
	public String toString() {
		return "Advertisement [adNo=" + adNo + ", adBno=" + adBno + ", adUrl=" + adUrl + ", adClickCount="
				+ adClickCount + ", adTimePrice=" + adTimePrice + ", adClickPrice=" + adClickPrice + ", adViewCount="
				+ adViewCount + ", adAble=" + adAble + ", adNot=" + adNot + ", adStartDate=" + adStartDate
				+ ", adEndDate=" + adEndDate + "]";
	}
	
}
