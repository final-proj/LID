package com.kh.lid.search.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.lid.common.vo.MemberProfile;

@Repository
public class SearchDaoImpl implements SearchDao {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MemberProfile> findMember(String searchText) {

		return sqlSession.selectList("search.findMember", searchText);
		
	}

	@Override
	public List<String> getTag(String keyword) {

		return sqlSession.selectList("search.getTag", keyword);
		
	}

	@Override
	public List<Integer> getCount(String keyword) {

		return sqlSession.selectList("search.getCount", keyword);
		
	}
	
	

	
}
