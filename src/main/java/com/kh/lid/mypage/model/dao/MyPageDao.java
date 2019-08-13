package com.kh.lid.mypage.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.lid.common.vo.Board;
import com.kh.lid.common.vo.BoardImage;
import com.kh.lid.common.vo.BoardTags;

public interface MyPageDao {

	int insertFeedImage(BoardImage bi);

	int insertFeed(Board board);

	int insertFeedTag(BoardTags bt);

	List<Map<String, String>> selectFeedList(int bMno, int cPage, int limit);

	int selectFeedTotalContent(int bMno);

	List<Map<String, String>> selectFollowing(int mNo, int cPage, int limit);

	int selectTotalFollowing(int mNo);

	List<Map<String, String>> selectFollower(int mNo, int cPage, int limit);

	int selectTotalFollower(int mNo);

}