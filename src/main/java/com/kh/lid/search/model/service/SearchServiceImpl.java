package com.kh.lid.search.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lid.common.vo.MemberProfile;
import com.kh.lid.search.model.dao.SearchDao;

@Service
public class SearchServiceImpl implements SearchService {
   
   @Autowired
   private SearchDao searchDao;

@Override
public List<MemberProfile> findMember(String searchText) {

	return searchDao.findMember(searchText);
	
}

@Override
public List<String> getTag(String keyword) {

	return searchDao.getTag(keyword);
	
}

@Override
public List<Integer> getCount(String keyword) {

	return searchDao.getCount(keyword);
	
}


}