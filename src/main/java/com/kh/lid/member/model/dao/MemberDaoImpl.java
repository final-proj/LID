
package com.kh.lid.member.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.lid.common.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return sqlSession.insert("member.insertMember", member);
	}

	@Override
	public Member selectMember(String mEmail) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.selectMember", mEmail);
	}

	@Override
	public int updateMemberPassword(Member member) {
		// TODO Auto-generated method stub
		return sqlSession.update("member.updatePassword", member);
	}

	@Override

	public int deleteMember(String mEmail) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int checkIdDuplicate(HashMap<String, Object> hmap) {
		sqlSession.selectOne("member.checkIdDuplicate", hmap);
		return (int)hmap.get("result");
	}

	@Override
	public int updateMemberProfile(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void createAuthKey(String getmEmail, String key) {
		// TODO Auto-generated method stub
		
		Member member = new Member();
		member.setmAuthCode(key);
		member.setmEmail(getmEmail);

		sqlSession.update("member.createAuthKey", member);
		
	}

	@Override
	public void checkAuth(String mEmail) {
		// TODO Auto-generated method stub
		sqlSession.update("member.checkAuth", mEmail);
		
	}

	@Override
	public Member checkEmail(Member member) {
		
		return sqlSession.selectOne("member.checkEmail", member);
	}
	
	
	
	@Override
	public int returnLevel(int mNo) {
		
		return sqlSession.update("member.returnLevel",mNo);
		
	}

}
