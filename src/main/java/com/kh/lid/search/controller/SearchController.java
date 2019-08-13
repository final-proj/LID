package com.kh.lid.search.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.lid.search.model.service.SearchService;

@SessionAttributes(value= {"member"})
@Controller
public class SearchController {
   
   @Autowired
   private SearchService searchService;
   
   @RequestMapping("/search/goSearchPage.do")
   public String goSearchPage() {
      
	   System.out.println("잘됨?");
      return "search/search-page";
   }
   }
