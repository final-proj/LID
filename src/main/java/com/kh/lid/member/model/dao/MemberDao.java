package com.kh.lid.member.model.dao;

import java.util.HashMap;

import com.kh.lid.common.vo.Member;

public interface MemberDao {
	

int insertMember(Member member);

	
	Member selectMember(String mEmail);
	
	int updateMemberProfile(Member member);
	
	int updateMemberPassword(Member member);
	
	int deleteMember(String mEmail);
	
	int checkIdDuplicate(HashMap<String, Object> hmap);

	void createAuthKey(String getmEmail, String key);

	void checkAuth(String mEmail);


	Member checkEmail(Member member);

	int returnLevel(int mNo);

}
