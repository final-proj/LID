package com.kh.lid.friendpage.model.dao;

import java.util.List;
import java.util.Map;

public interface FriendPageDao {

	List<Map<String, String>> selectFeedList(int bMno, int cPage, int limit);

	int selectFeedTotalContent(int bMno);

}