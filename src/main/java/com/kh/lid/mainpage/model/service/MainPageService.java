package com.kh.lid.mainpage.model.service;

import java.util.List;

import com.kh.lid.common.vo.Board;

public interface MainPageService {

	
	
	/**
	 * 총 멤버 수
	 * @return
	 */
	int selectCountMember();
	
	
	/**
	 * 총 게시물 수
	 * @return
	 */
	int selectCountBoard();

	

	/**
	 * INDEX 최근 게시물
	 * @return
	 */
	List<Board> selectListBoard();

}