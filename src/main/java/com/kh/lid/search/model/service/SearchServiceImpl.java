package com.kh.lid.search.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lid.search.model.dao.SearchDao;

@Service
public class SearchServiceImpl implements SearchService {
   
   @Autowired
   private SearchDao searchDao;


}