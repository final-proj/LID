package com.kh.lid.search.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.kh.lid.common.vo.MemberProfile;
import com.kh.lid.friendpage.model.service.FriendPageService;
import com.kh.lid.search.model.service.SearchService;

@SessionAttributes(value= {"member"})
@Controller
public class SearchController {
   
	   @Autowired
	   private FriendPageService friendPageService;
	
   @Autowired
   private SearchService searchService;
   
   @RequestMapping("/search/goSearchPage.do")
   public String goSearchPage() {
      
	   System.out.println("잘됨?");
      return "search/search-page";
   }
   
   @RequestMapping("/search/searchAccount.do")
   @ResponseBody
	public void searchAccountandTags(HttpServletResponse response, String term, HttpSession session) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		List<MemberProfile> result = searchService.findMember(term);
		List<String> result2 = searchService.getTag(term); 
		List<Integer> result3 = searchService.getCount(term);
		
		JsonArray list = new JsonArray();
		
		for(int i = 0; i < result.size(); i++) {
			JsonObject object = new JsonObject();
			object.addProperty("id", result.get(i).getMpNickname());
			object.addProperty("link", "goFriendAbout.do?Mno="+result.get(i).getMpMno()); // 링크
//			String profile = profileService.selectOneProfileImage(result.get(i).getId()); // 프사 넣는 부분
//			if(profile != "") {
//				object.addProperty("img", "AttachedMedia/"+profileService.selectOneProfileImage(result.get(i).getId()));
//			}else {
//				object.addProperty("img", "resources/images/DefaultProfile.jpg");
//			}
			object.addProperty("category", "People");
			System.out.println(object);
			list.add(object);
			
		}
		
		for(int i = 0; i < result2.size(); i++) {
			JsonObject object = new JsonObject();
			object.addProperty("tags", result2.get(i));
			object.addProperty("link", "searchHashTags.do?tag=" + result2.get(i));
			object.addProperty("count", result3.get(i));
//			object.addProperty("img", "resources/images/DefaultProfile.jpg"); // 이미지 넣는부분
			object.addProperty("category", "Tag");
			list.add(object);
			System.out.println(object);
		} 	
		
		
		System.out.println(list);
		
		
		
		new Gson().toJson(list, response.getWriter());
	}
   
   @RequestMapping("/search/goFriendAbout.do")
   public String goFriendAbout(@RequestParam int Mno,
							   @RequestParam(value="cPage", required=false, defaultValue="1") int cPage, 
							   Model model,
							   HttpSession session) {
		
      return "friendpage/friendpage-about";
      
   }
	
   
   
   
   }
