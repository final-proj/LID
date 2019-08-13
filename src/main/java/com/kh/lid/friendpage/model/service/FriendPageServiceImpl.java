package com.kh.lid.friendpage.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lid.friendpage.model.dao.FriendPageDao;

@Service
public class FriendPageServiceImpl implements FriendPageService {
   
   @Autowired
   private FriendPageDao friendPageDao;

   @Override
   public List<Map<String, String>> selectFeedList(int bMno, int cPage, int limit) {
   	// TODO Auto-generated method stub
   	return friendPageDao.selectFeedList(bMno ,cPage, limit);
   }


   @Override
   public int selectFeedTotalContent(int bMno) {
   	// TODO Auto-generated method stub
   	return friendPageDao.selectFeedTotalContent(bMno);
   	}


}