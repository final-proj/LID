package com.kh.lid.mypage.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.lid.common.vo.Board;
import com.kh.lid.common.vo.BoardImage;
import com.kh.lid.common.vo.BoardTags;

@Repository
public class MyPageDaoImpl implements MyPageDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertFeed(Board board) {
		// TODO Auto-generated method stub
		return sqlSession.insert("board.insertFeedContent", board);
	}
	
	
	@Override
	public int insertFeedImage(BoardImage bi) {
		
		System.out.println("DAO 전달 확인 : " + bi.getBiName());
		return sqlSession.insert("board.insertFeedImg", bi);
	}


	@Override
	public int insertFeedTag(BoardTags bt) {
		// TODO Auto-generated method stub
		return sqlSession.insert("board.insertFeedTags", bt);
	}


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


	@Override
	public List<Map<String, String>> selectFollowing(int mNo, int cPage, int limit) {
		
		RowBounds rows = new RowBounds((cPage -1) * limit, limit);

		return sqlSession.selectList("follow.selectFollowing", mNo, rows);
	}


	@Override
	public int selectTotalFollowing(int mNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("follow.selectTotalFollowing", mNo);
	}


	@Override
	public List<Map<String, String>> selectFollower(int mNo, int cPage, int limit) {
		
		RowBounds rows = new RowBounds((cPage -1) * limit, limit);
		// TODO Auto-generated method stub
		return sqlSession.selectList("follow.selectFollower", mNo, rows);
	}


	@Override
	public int selectTotalFollower(int mNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("follow.selectTotalFollower", mNo);
	}


}
