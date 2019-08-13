package com.kh.lid.mypage.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lid.common.vo.Board;
import com.kh.lid.common.vo.BoardImage;
import com.kh.lid.common.vo.BoardTags;
import com.kh.lid.mypage.model.dao.MyPageDao;

@Service
public class MyPageServiceImpl implements MyPageService {
   
   @Autowired
   private MyPageDao myPageDao;

@Override
public int insertFeed(Board board, List<BoardImage> bimglist, List<BoardTags> btlist) {
	
	System.out.println("service board: " + board.getbContent());
	
	int result = 0;
	int result1 = 0;
	
	result1 = myPageDao.insertFeed(board);
	
	for(BoardImage bi : bimglist) {
		
		System.out.println("서비스 전달 확인 : " + bi.getBiName());
		
		result1 = myPageDao.insertFeedImage(bi);
		
	}
	
	if(btlist != null) {
		
		for(BoardTags bt : btlist) {
			
			myPageDao.insertFeedTag(bt);
			
		}
	}
	
	return result * result1;

}


@Override
public List<Map<String, String>> selectFeedList(int bMno, int cPage, int limit) {
	// TODO Auto-generated method stub
	return myPageDao.selectFeedList(bMno ,cPage, limit);
}


@Override
public int selectFeedTotalContent(int bMno) {
	// TODO Auto-generated method stub
	return myPageDao.selectFeedTotalContent(bMno);
	}


@Override
public List<Map<String, String>> selectFollowing(int mNo, int cPage, int limit) {
	// TODO Auto-generated method stub
	return myPageDao.selectFollowing(mNo ,cPage, limit);
}


@Override
public int selectTotalFollowing(int mNo) {
	// TODO Auto-generated method stub
	return myPageDao.selectTotalFollowing(mNo);
}


@Override
public List<Map<String, String>> selectFollower(int mNo, int cPage, int limit) {
	// TODO Auto-generated method stub
	return myPageDao.selectFollower(mNo ,cPage, limit);
}


@Override
public int selectTotalFollower(int mNo) {
	// TODO Auto-generated method stub
	return myPageDao.selectTotalFollower(mNo);
}






}