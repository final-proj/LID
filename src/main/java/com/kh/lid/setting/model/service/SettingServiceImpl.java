  package com.kh.lid.setting.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lid.common.vo.Block;
import com.kh.lid.common.vo.MatchingSetting;
import com.kh.lid.common.vo.Member;
import com.kh.lid.common.vo.MemberProfile;
import com.kh.lid.common.vo.Payment;
import com.kh.lid.setting.model.dao.SettingDao;

@Service
public class SettingServiceImpl implements SettingService{

	
	@Autowired
	private SettingDao settingDao;
	
	
	
	// 회원 프로필 수정
	@Override
	public int updateProfile(int mNo, MemberProfile memberProfile) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("memberProfile", memberProfile);
		map.put("mNo", mNo);
		
		return settingDao.updateProfile(memberProfile);
	}
	
	// 닉네임 중복 체크
	@Override
	public int checkNicknameDuplicate(String mpNickname) {
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		hmap.put("mpNickname", mpNickname);
		
		return settingDao.checkNicknameDuplicate(hmap);
	}
	
	// 회원 탈퇴
	@Override
	public int deleteMember(String mEmail) {
		
		return settingDao.deleteMember(mEmail);
	}
	
	
	// 비밀번호 변경
	@Override
	public int updatePwd(Member member) {
		
		return settingDao.updatePwd(member);
	}


	// 비밀번호 체크
	@Override
	public int checkPwdDuplicate(String mPwd) {
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		hmap.put("mPwd", mPwd);
		
		return settingDao.checkPwdDuplicate(hmap);
	}
	
	
	// 차단 목록
	
	@Override
	public List<Map<String, String>> selectListBlock(int getmNo) {
		
		return settingDao.selectListBlock(getmNo);
	}

	// 차단해제하기
	@Override
	public int deleteBlock(Block blk) {

		return settingDao.deleteBlock(blk);
	}
	
	// 정기권 확인하기
	@Override
	public List<Map<String, String>> seasonTicketList(int getmNo) {
		
		return settingDao.seasonTicketList(getmNo);
	}

	// 매칭 설정하기
	@Override
	public int updateMathcing(MatchingSetting ms) {
		
		return settingDao.updateMatching(ms);
		
	}
	// 회원 정보 수정 페이지
	@Override
	public MemberProfile selectProfileOne(int getmNo) {
		
		return settingDao.selectProfileOne(getmNo);
	}


	
	


	
}
