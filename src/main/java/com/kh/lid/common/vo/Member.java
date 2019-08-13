package com.kh.lid.common.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Member implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 9132129182715694232L;
	
	private int mNo;
	private String mEmail;
	private String mPwd;
	private String mName;
	private String mPhone;
	private Date mDate;
	private String mLevel;
	private String mAuthCode;
	private int checkAuth;
	
	
	private String mpNickname;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	

	public Member(int mNo, String mEmail, String mPwd, String mName, String mPhone, Date mDate, String mLevel,
			String mAuthCode, int checkAuth) {
		super();
		this.mNo = mNo;
		this.mEmail = mEmail;
		this.mPwd = mPwd;
		this.mName = mName;
		this.mPhone = mPhone;
		this.mDate = mDate;
		this.mLevel = mLevel;
		this.mAuthCode = mAuthCode;
		this.checkAuth = checkAuth;
	}




	public Member(int mNo, String mEmail, String mPwd, String mName, String mPhone, Date mDate, String mLevel,
			String mAuthCode) {
		super();
		this.mNo = mNo;
		this.mEmail = mEmail;
		this.mPwd = mPwd;
		this.mName = mName;
		this.mPhone = mPhone;
		this.mDate = mDate;
		this.mLevel = mLevel;
		this.mAuthCode = mAuthCode;
	}




	public Member(int mNo, String mEmail, String mPwd, String mName, String mPhone, Date mDate, String mLevel) {
		super();
		this.mNo = mNo;
		this.mEmail = mEmail;
		this.mPwd = mPwd;
		this.mName = mName;
		this.mPhone = mPhone;
		this.mDate = mDate;
		this.mLevel = mLevel;
	}
	

	
	
	public Member(int mNo, String mEmail, String mPwd, String mName, String mPhone, Date mDate, String mLevel,
			String mAuthCode, int checkAuth, String mpNickname) {
		super();
		this.mNo = mNo;
		this.mEmail = mEmail;
		this.mPwd = mPwd;
		this.mName = mName;
		this.mPhone = mPhone;
		this.mDate = mDate;
		this.mLevel = mLevel;
		this.mAuthCode = mAuthCode;
		this.checkAuth = checkAuth;
		this.mpNickname = mpNickname;
	}




	public String getMpNickname() {
		return mpNickname;
	}




	public void setMpNickname(String mpNickname) {
		this.mpNickname = mpNickname;
	}




	public int getmNo() {
		return mNo;
	}


	public void setmNo(int mNo) {
		this.mNo = mNo;
	}


	public String getmEmail() {
		return mEmail;
	}


	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}


	public String getmPwd() {
		return mPwd;
	}


	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}


	public String getmName() {
		return mName;
	}


	public void setmName(String mName) {
		this.mName = mName;
	}


	public String getmPhone() {
		return mPhone;
	}


	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}


	public Date getmDate() {
		return mDate;
	}


	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}


	public String getmLevel() {
		return mLevel;
	}


	public void setmLevel(String mLevel) {
		this.mLevel = mLevel;
	}

	

	public String getmAuthCode() {
		return mAuthCode;
	}


	public void setmAuthCode(String mAuthCode) {
		this.mAuthCode = mAuthCode;
	}

	

	public int getCheckAuth() {
		return checkAuth;
	}




	public void setCheckAuth(int checkAuth) {
		this.checkAuth = checkAuth;
	}




	@Override
	public String toString() {
		return "Member [mNo=" + mNo + ", mEmail=" + mEmail + ", mPwd=" + mPwd + ", mName=" + mName + ", mPhone="
				+ mPhone + ", mDate=" + mDate + ", mLevel=" + mLevel + ", mAuthCode=" + mAuthCode + ", checkAuth="
				+ checkAuth + "]";
	}
	
	
	
	

}
