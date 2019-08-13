package com.kh.lid.mypage.model.service;

import java.util.List;
import java.util.Map;

import com.kh.lid.common.vo.Board;
import com.kh.lid.common.vo.BoardImage;
import com.kh.lid.common.vo.BoardTags;
import com.kh.lid.mypage.model.exception.MyPageException;

public interface MyPageService {
	
	static final int FEED_SRV_ERROR = 0;
	static final int FEED_SRV_COMP = 1;

	int insertFeed(Board board, List<BoardImage> bimglist, List<BoardTags> btlist);

	List<Map<String, String>> selectFeedList(int Bmno, int cPage, int limit);

	int selectFeedTotalContent(int getmNo);

	List<Map<String, String>> selectFollowing(int mNo, int cPage, int limit);

	int selectTotalFollowing(int getmNo);

	List<Map<String, String>> selectFollower(int mNo, int cPage, int limit);

	int selectTotalFollower(int mNo);

}