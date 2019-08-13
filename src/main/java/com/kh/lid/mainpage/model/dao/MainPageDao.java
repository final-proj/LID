package com.kh.lid.mainpage.model.dao;

import java.util.List;

import com.kh.lid.common.vo.Board;

public interface MainPageDao {

	
	/**
	 * 총 회원 수 (ajax)
	 * @return
	 */
	int selectCountMember();

	/**
	 * 총 게시물 수
	 * @return
	 */
	int selectCountBoard();

	/**
	 * index 최근 게시물
	 * @return
	 */
	List<Board> selectListBoard();
	


}
