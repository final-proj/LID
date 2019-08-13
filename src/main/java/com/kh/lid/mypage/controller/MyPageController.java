package com.kh.lid.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.lid.common.util.Utils;
import com.kh.lid.common.vo.Board;
import com.kh.lid.common.vo.BoardImage;
import com.kh.lid.common.vo.BoardTags;
import com.kh.lid.common.vo.Member;
import com.kh.lid.mypage.model.service.MyPageService;

@SessionAttributes(value= {"member"})

@Controller
public class MyPageController {
   
   @Autowired
   private MyPageService myPageService;
   
   @RequestMapping("/mypage/goMyAbout.do")
   public String goMyAbout() {
		
      return "mypage/mypage-about";
   }
   
   
   @RequestMapping("/mypage/goMyTimeline.do")
   public String goMyTimeline(@RequestParam(value="cPage", required=false, defaultValue="1")
	int cPage, Model model, HttpSession session) {
	   
	   	    Member member = (Member)session.getAttribute("member");
	   
		    int limit = 5; // 한 페이지 당 게시글 수
		    
//			1. 현재 페이지 게시글 목록 가져오기
			ArrayList list = new ArrayList<>(myPageService.selectFeedList(member.getmNo(), cPage, limit));
			
			System.out.println(list);
			
//			2. 전체 페이지 게시글 수 가져오기
			int totalContents = myPageService.selectFeedTotalContent(member.getmNo());

			String pageBar = Utils.getPageBar(totalContents, cPage, limit, "goMyTimeline.do");

			model.addAttribute("list", list).addAttribute("totalContents", totalContents).addAttribute("numPerPage", limit)
					.addAttribute("pageBar", pageBar);
      
			return "mypage/mypage-timeline";
   }

   
   @RequestMapping("/mypage/goMyAlbum.do")
   public String goMyAlbum(@RequestParam(value="cPage", required=false, defaultValue="1")
	int cPage, Model model, HttpSession session) {
	   
  	    Member member = (Member)session.getAttribute("member");
  
	    int limit = 5; // 한 페이지 당 게시글 수
	    
//		1. 현재 페이지 게시글 목록 가져오기
		ArrayList list = new ArrayList<>(myPageService.selectFeedList(member.getmNo(), cPage, limit));
		
		System.out.println(list);
		
//		2. 전체 페이지 게시글 수 가져오기
		int totalContents = myPageService.selectFeedTotalContent(member.getmNo());

		String pageBar = Utils.getPageBar(totalContents, cPage, limit, "goMyTimeline.do");

		model.addAttribute("list", list).addAttribute("totalContents", totalContents).addAttribute("numPerPage", limit)
				.addAttribute("pageBar", pageBar);
		
	   return "mypage/mypage-album";
   }
   
   
   
   
   @RequestMapping("/mypage/goMyFollower.do")
   public String goMyFriend(@RequestParam(value="cPage", required=false, defaultValue="1")
	int cPage, Model model, HttpSession session) {
	   
	   Member member = (Member)session.getAttribute("member");
	   
	    int limit = 5; // 한 페이지 당 게시글 수
	    
//		1. 현재 페이지 게시글 목록 가져오기
		ArrayList list = new ArrayList<>(myPageService.selectFollower(member.getmNo(), cPage, limit));
		
		System.out.println(list);
		
//		2. 전체 페이지 게시글 수 가져오기
		int totalContents = myPageService.selectTotalFollower(member.getmNo());

		String pageBar = Utils.getPageBar(totalContents, cPage, limit, "goMyTimeline.do");

		model.addAttribute("list", list).addAttribute("totalContents", totalContents).addAttribute("numPerPage", limit)
				.addAttribute("pageBar", pageBar);
      
      return "mypage/mypage-follower";
   }
   
   
   
   
   
   
   @RequestMapping("/mypage/goMyFollowing.do")
   public String goMyFollowing(@RequestParam(value="cPage", required=false, defaultValue="1")
	int cPage, Model model, HttpSession session) {
	   
	   Member member = (Member)session.getAttribute("member");
	   
	    int limit = 5; // 한 페이지 당 게시글 수
	    
//		1. 현재 페이지 게시글 목록 가져오기
		ArrayList list = new ArrayList<>(myPageService.selectFollowing(member.getmNo(), cPage, limit));
		
		System.out.println(list);
		
//		2. 전체 페이지 게시글 수 가져오기
		int totalContents = myPageService.selectTotalFollowing(member.getmNo());

		String pageBar = Utils.getPageBar(totalContents, cPage, limit, "goMyTimeline.do");

		model.addAttribute("list", list).addAttribute("totalContents", totalContents).addAttribute("numPerPage", limit)
				.addAttribute("pageBar", pageBar);
	   
	   return "mypage/mypage-following";
   }
   
   
   
   
   
   
   @RequestMapping("/mypage/goMatching.do")
   public String goMyMatching(@RequestParam(value="cPage", required=false, defaultValue="1")
	int cPage, Model model, HttpSession session) {
	   
	   return "mypage/mypage-matching";
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   @RequestMapping(value ="/myPage/FeedUpload.do", method = RequestMethod.POST)
   @ResponseBody
	public String insertBoard(Board board, @RequestParam(required=false)
							  String[] uploadImg, HttpSession session) {
	   
	   Member member = (Member)session.getAttribute("member");
	   board.setbMno(member.getmNo());
	   
	   //해시태그 추출
	   List<BoardTags> btlist = new ArrayList();
	   
	   Pattern p = Pattern.compile("\\#([0-9a-zA-Z가-힣]*)");
	   Matcher m = p.matcher(board.getbContent());
	   
	   while(m.find()) {
		   
		   BoardTags bt = new BoardTags();
		   
		   bt.setBtContent(m.group(1));
		   
		   btlist.add(bt);
	   }
	   
	   //이미지 등록
	   List<BoardImage> bimglist = new ArrayList();
	  
	   SimpleDateFormat sdf = new SimpleDateFormat ( "yyyyMMddHHmmss");
	   
	   
	   String loc = "/";
	   String msg = "";
       String fileName = member.getmNo() + "_" + sdf.format(System.currentTimeMillis())+ "_";
	   
	   System.out.println(member);
	   
	   System.out.println("ajax send check");
	   
	   String saveDir = session.getServletContext().getRealPath("/resources/images/FeedImage");
	   
	   if(new File(saveDir).exists()) {
		   
		for (int i = 0; i < uploadImg.length; i++) {
			
			byte[] decodedImg = Base64.getDecoder().decode(uploadImg[i].getBytes(StandardCharsets.UTF_8));
			
			Path destinationFile = Paths.get(saveDir, fileName + i + ".jpeg");
			
			try {
			
				Files.write(destinationFile, decodedImg);
			} 
			catch (IOException e) {
			
				// TODO Auto-generated catch block
				e.printStackTrace();
			
				}
		
			BoardImage bi = new BoardImage();
			
			bi.setBiName(fileName + i + ".jpeg");
			
			bimglist.add(bi);
			
		   }
			
		}
	   
	   int result = myPageService.insertFeed(board, bimglist, btlist);
	   
	   return uploadImg == null ? "false" : "true";
   }
  
}
