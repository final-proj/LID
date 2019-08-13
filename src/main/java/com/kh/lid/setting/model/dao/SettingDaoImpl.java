package com.kh.lid.setting.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.lid.common.vo.Block;
import com.kh.lid.common.vo.MatchingSetting;
import com.kh.lid.common.vo.Member;
import com.kh.lid.common.vo.MemberProfile;

@Repository
public class SettingDaoImpl implements SettingDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	@Override
	public int updateProfile(MemberProfile memberProfile) {
		
		
		return sqlSession.update("memberProfile.updateProfile", memberProfile);
	}
	
	// 닉네임 중복 체크
	@Override
	public int checkNicknameDuplicate(HashMap<String, Object> hmap) {
		
		sqlSession.selectOne("memberProfile.checkNicknameDuplicate", hmap);
		
		return (int) hmap.get("result");
	}
	
	// 회원 탈퇴
	@Override
	public int deleteMember(String mEmail) {
		
		return sqlSession.delete("member.deleteMember", mEmail);
	}

	
	// 비밀번호 변경
	@Override
	public int updatePwd(Member member) {
		
		System.out.println(member);
		
		return sqlSession.update("member.updatePwd", member);
	}

	/**
	 * 비밀번호 변경 체크
	 */
	@Override
	public int checkPwdDuplicate(HashMap<String, Object> hmap) {
		
		sqlSession.selectOne("member.checkPwdDuplicate", hmap);
		
		return (int)hmap.get("result");
		
	}
	
	// 차단 목록
	@Override
	public List<Map<String, String>> selectListBlock(int getmNo) {
		System.out.println(sqlSession.selectList("block.selectListBlock", getmNo));
		return sqlSession.selectList("block.selectListBlock", getmNo);
	}

	// 차단 해제하기
	@Override
	public int deleteBlock(Block blk) {
		
		// System.out.println(sqlSession.delete("block.deleteBlock", blk));
		
		return sqlSession.delete("block.deleteBlock", blk);
	}
	// 정기권 확인하기
	@Override
	public List<Map<String, String>> seasonTicketList(int getmNo) {
		
		System.out.println(sqlSession.selectList("payment.seasonTicketList", getmNo));
		
		return sqlSession.selectList("payment.seasonTicketList", getmNo);
	}
	
	@Override
	public int updateMatching(MatchingSetting ms) {
		
		
		
		return sqlSession.update("matchingSetting.updateMatching", ms);
		
	}

	@Override
	public Object selectProfile(String mEmail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberProfile selectProfileOne(int getmNo) {
		
		return sqlSession.selectOne("memberProfile.selectProfileOne", getmNo);
	}

	




}
