package com.kh.lid.common.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class BoardImage implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5344708400818245691L;
	
	private int biNo;
	private int biBNo;
	private String biName;
	private String biPath;
	private String biFilter;
	
	
	public BoardImage() {
		// TODO Auto-generated constructor stub
	}


	public BoardImage(int biNo, int biBNo, String biName, String biPath, String biFilter) {
		super();
		this.biNo = biNo;
		this.biBNo = biBNo;
		this.biName = biName;
		this.biPath = biPath;
		this.biFilter = biFilter;
	}


	@Override
	public String toString() {
		return "BoardImage [biNo=" + biNo + ", biBNo=" + biBNo + ", biName=" + biName + ", biPath=" + biPath
				+ ", biFilter=" + biFilter + "]";
	}


	public int getBiNo() {
		return biNo;
	}


	public void setBiNo(int biNo) {
		this.biNo = biNo;
	}


	public int getBiBNo() {
		return biBNo;
	}


	public void setBiBNo(int biBNo) {
		this.biBNo = biBNo;
	}


	public String getBiName() {
		return biName;
	}


	public void setBiName(String biName) {
		this.biName = biName;
	}


	public String getBiPath() {
		return biPath;
	}


	public void setBiPath(String biPath) {
		this.biPath = biPath;
	}


	public String getBiFilter() {
		return biFilter;
	}


	public void setBiFilter(String biFilter) {
		this.biFilter = biFilter;
	}
	
}