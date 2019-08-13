package com.kh.lid.newsfeed.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lid.newsfeed.model.dao.NewsfeedDao;

@Service
public class NewsfeedServiceImpl implements NewsfeedService {
   
   @Autowired
   private NewsfeedDao newsfeedDao;

}