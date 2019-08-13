package com.kh.lid.search.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.lid.common.vo.MemberProfile;

public interface SearchDao {

	List<MemberProfile> findMember(String searchText);
	
	List<String> getTag(String keyword);
	
	List<Integer> getCount(String keyword);
	

}
