package com.kh.lid.friendpage.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FriendPageDaoImpl implements FriendPageDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<Map<String, String>> selectFeedList(int bMno, int cPage, int limit) {

		RowBounds rows = new RowBounds((cPage -1) * limit, limit);// TODO Auto-generated method stub
		
		return sqlSession.selectList("board.selectFeedList", bMno, rows);
	}


	@Override
	public int selectFeedTotalContent(int bMno) {
		System.out.println("회원 번호 : "  + bMno);
		// TODO Auto-generated method stub
		return sqlSession.selectOne("board.selectFeedTotalContent", bMno);
	}
	
}
