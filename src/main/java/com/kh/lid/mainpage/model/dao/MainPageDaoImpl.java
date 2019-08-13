package com.kh.lid.mainpage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.lid.common.vo.Board;

@Repository
public class MainPageDaoImpl implements MainPageDao {

	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int selectCountMember() {
		
		return sqlSession.selectOne("main.selectCountMember");
	}

	@Override
	public int selectCountBoard() {
		
		return sqlSession.selectOne("main.selectCountBoard");
	}

	@Override
	public List<Board> selectListBoard() {
		
		System.out.println(sqlSession.selectList("main.indexSelectListBoard"));
		return sqlSession.selectList("main.indexSelectListBoard");
	}

	
}
