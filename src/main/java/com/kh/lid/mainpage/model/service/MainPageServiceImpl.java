package com.kh.lid.mainpage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lid.common.vo.Board;
import com.kh.lid.mainpage.model.dao.MainPageDao;

@Service
public class MainPageServiceImpl implements MainPageService {

	@Autowired
	private MainPageDao mainPageDao;

	@Override
	public int selectCountMember() {

		return mainPageDao.selectCountMember();
	}

	@Override
	public int selectCountBoard() {
		
		return mainPageDao.selectCountBoard();
	}

	@Override
	public List<Board> selectListBoard() {
		
		return mainPageDao.selectListBoard();
	}


}
