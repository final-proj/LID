package com.kh.lid.friendpage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.lid.common.util.Utils;
import com.kh.lid.friendpage.model.service.FriendPageService;

@SessionAttributes(value= {"member"})
@Controller
public class FriendPageController {
   
   @Autowired
   private FriendPageService friendPageService;
   
   @RequestMapping("/friendpage/goFriendAbout.do")
   public String goFriendAbout(@RequestParam int Mno,
							   @RequestParam(value="cPage", required=false, defaultValue="1") int cPage, 
							   Model model,
							   HttpSession session) {
		
      return "friendpage/friendpage-about";
      
   }
   
   
   @RequestMapping("/friendpage/goFriendTimeline.do")
   public String goFriendTimeline(@RequestParam int Mno,
		  						  @RequestParam(value="cPage", required=false, defaultValue="1") int cPage, 
		  						  Model model,
		  						  HttpSession session) {
      
	   int limit = 5; // 한 페이지 당 게시글 수
	    
//		1. 현재 페이지 게시글 목록 가져오기
		ArrayList list = new ArrayList<>(friendPageService.selectFeedList(Mno, cPage, limit));
		
		System.out.println(list);
		
//		2. 전체 페이지 게시글 수 가져오기
		int totalContents = friendPageService.selectFeedTotalContent(Mno);

		String pageBar = Utils.getPageBar(totalContents, cPage, limit, "goMyTimeline.do");

		model.addAttribute("list", list).addAttribute("totalContents", totalContents).addAttribute("numPerPage", limit)
				.addAttribute("pageBar", pageBar).addAttribute("Mno", Mno);
	   
			return "friendpage/friendpage-timeline";
   }

   
   @RequestMapping("/friendpage/goFriendAlbum.do")
   public String goFriendAlbum(@RequestParam int Mno,
							   @RequestParam(value="cPage", required=false, defaultValue="1") int cPage, 
							   Model model,
							   HttpSession session) {
	   
	   int limit = 9; // 한 페이지 당 게시글 수
	    
//		1. 현재 페이지 게시글 목록 가져오기
		ArrayList list = new ArrayList<>(friendPageService.selectFeedList(Mno, cPage, limit));
		
		System.out.println(list);
		
//		2. 전체 페이지 게시글 수 가져오기
		int totalContents = friendPageService.selectFeedTotalContent(Mno);

		String pageBar = Utils.getPageBar(totalContents, cPage, limit, "goMyTimeline.do");

		model.addAttribute("list", list).addAttribute("totalContents", totalContents).addAttribute("numPerPage", limit)
				.addAttribute("pageBar", pageBar).addAttribute("Mno", Mno);
	   
	   return "friendpage/friendpage-album";
   }
   
}
