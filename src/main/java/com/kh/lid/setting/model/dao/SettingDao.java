package com.kh.lid.setting.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kh.lid.common.vo.Block;
import com.kh.lid.common.vo.MatchingSetting;
import com.kh.lid.common.vo.Member;
import com.kh.lid.common.vo.MemberProfile;

public interface SettingDao {

	

	
	/**
	 * 프로필 설정 view
	 * @param mEmail
	 * @return
	 */
	Object selectProfile(String mEmail);
	
	
	/**
	 * 닉네임 중복 체크 메소드
	 * @param hmap
	 * @return
	 */
	int checkNicknameDuplicate(HashMap<String, Object> hmap);
	
	/**
	 * 회원 탈퇴 메소드
	 * @param mEmail
	 * @return
	 */
	int deleteMember(String mEmail);
	
	
	// 비밀번호 변경 메소드
	int updatePwd(Member member);
	
	/**
	 * 비밀번호 중복 체크 메소드
	 * @param hmap
	 * @return
	 */
	int checkPwdDuplicate(HashMap<String, Object> hmap);

	/**
	 * 회원 프로필 설정
	 * @param memberProfile
	 * @return
	 */
	/* int updateProfile(MemberProfile memberProfile, int mNo); */
	int updateProfile(MemberProfile memberProfile);

	
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
	 * @return
	 */
	List<Map<String, String>> seasonTicketList(int getmNo);

	/**
	 * 매칭 설정하기
	 * @param getmNo
	 * @param matchingSetting
	 * @return
	 */

	int updateMatching(MatchingSetting ms);

	/**
	 * 회원 정보 수정 페이지
	 * @param getmNo
	 * @return
	 */
	MemberProfile selectProfileOne(int getmNo);
	
	
	
	

	


	



}
