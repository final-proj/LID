package com.kh.lid.common.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class BoardLocation implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7552019455912360734L;

	private int bloNo;
	private int bloLocation;
	private int bloLatitude; // 위도
	private int bloLongitude; // 경도

	public BoardLocation() {
		// TODO Auto-generated constructor stub
	}

	public BoardLocation(int bloNo, int bloLocation, int bloLatitude, int bloLongitude) {
		super();
		this.bloNo = bloNo;
		this.bloLocation = bloLocation;
		this.bloLatitude = bloLatitude;
		this.bloLongitude = bloLongitude;
	}

	@Override
	public String toString() {
		return "BoardLocation [bloNo=" + bloNo + ", bloLocation=" + bloLocation + ", bloLatitude=" + bloLatitude
				+ ", bloLongitude=" + bloLongitude + "]";
	}

	public int getBloNo() {
		return bloNo;
	}

	public void setBloNo(int bloNo) {
		this.bloNo = bloNo;
	}

	public int getBloLocation() {
		return bloLocation;
	}

	public void setBloLocation(int bloLocation) {
		this.bloLocation = bloLocation;
	}

	public int getBloLatitude() {
		return bloLatitude;
	}

	public void setBloLatitude(int bloLatitude) {
		this.bloLatitude = bloLatitude;
	}

	public int getBloLongitude() {
		return bloLongitude;
	}

	public void setBloLongitude(int bloLongitude) {
		this.bloLongitude = bloLongitude;
	}
	
	
}
