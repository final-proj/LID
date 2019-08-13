package com.kh.lid.search.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.lid.common.vo.Board;
import com.kh.lid.common.vo.BoardImage;

@Repository
public class SearchDaoImpl implements SearchDao {

	@Autowired
	SqlSession sqlSession;
	
	

	
}
