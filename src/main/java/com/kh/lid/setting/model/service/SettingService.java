package com.kh.lid.setting.model.service;

import java.util.List;
import java.util.Map;

import com.kh.lid.common.vo.Block;
import com.kh.lid.common.vo.MatchingSetting;
import com.kh.lid.common.vo.Member;
import com.kh.lid.common.vo.MemberProfile;
import com.kh.lid.common.vo.Payment;

public interface SettingService {
	
	
	
	/**
	 * 회원 프로필 수정
	 * @param memberProfile
	 * @return
	 */
	int updateProfile(int mNo, MemberProfile memberProfile);

	/**
	 * 회원 탈퇴 메소드
	 * @param mEmail
	 * @return
	 */
	int deleteMember(String mEmail);
	
	
	/**
	 * 비밀번호 변경 메소드
	 * 
	 * @param member
	 * @return
	 */
	int updatePwd(Member member);

	

	/**
	 * 현재 비밀번호 체크 메소드
	 * 
	 * @param mPwd
	 * @return
	 */
	int checkPwdDuplicate(String mPwd);

	
	/**
	 * 닉네임 중복 체크 메소드
	 * @param mpNickname
	 * @return
	 */
	int checkNicknameDuplicate(String mpNickname);
	
	
	/**
	 * 차단 목록
	 * @param getmNo
	 * @return
	 */
	List<Map<String, String>> selectListBlock(int getmNo);

	
	
	/**
	 * 차단 해제하기
	 * @param blk
	 * @return
	 */
	int deleteBlock(Block blk);


	
	/**
	 * 정기권 확인하기
	 * @param getmNo
	 * @param payment
	 * @return
	 */
	List<Map<String, String>> seasonTicketList(int getmNo);
	
	
	/**
	 * 매칭 설정하기
	 * @param map
	 * @return
	 */
	int updateMathcing(MatchingSetting ms);
	
	/**
	 * 회원 수정 페이지 
	 * @param getmNo
	 * @return
	 */
	MemberProfile selectProfileOne(int getmNo);


	

	




}
