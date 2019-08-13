package com.kh.lid.friendpage.model.service;

import java.util.List;
import java.util.Map;

public interface FriendPageService {

	int selectFeedTotalContent(int bMno);

	List<Map<String, String>> selectFeedList(int bMno, int cPage, int limit);
	
	
}