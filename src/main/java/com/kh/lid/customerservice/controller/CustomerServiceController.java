package com.kh.lid.customerservice.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.lid.customerservice.model.service.CustomerServiceService;
import com.kh.lid.common.util.Utils;
import com.kh.lid.common.vo.FAQ;
import com.kh.lid.common.vo.Member;
import com.kh.lid.common.vo.Notice;
import com.kh.lid.common.vo.Question;

@Controller
public class CustomerServiceController {

   
   @Autowired
   private CustomerServiceService csService;
   // 고객센터 페이지
   @RequestMapping("/customerService/csCenter.do")
   public String CustomerServiceExample(@RequestParam(value = "cPage", required = false, defaultValue = "1") int cPage,
		   FAQ faq, Model model) {
	   
	   
		  // faq
		  ArrayList<Map<String, String>> list =  new ArrayList<>(csService.selectListFaq(faq));

		int limit = 10; // 한 페이지 당 게시글 수

//		1. 현재 페이지 게시글 목록 가져오기   // 공지사항
		ArrayList<Map<String, String>> list2 =  new ArrayList<>(csService.selectListNotice(cPage, limit));

//		2. 전체 페이지 게시글 수 가져오기
		int totalContents = csService.selectNoticeTotalContent();

		String pageBar = Utils.getPageBar(totalContents, cPage, limit, "csCenter.do");
	   
	   
	 
		System.out.println("list2 : " + list2);
	  model.addAttribute("list", list).addAttribute("list2", list2)
	  	.addAttribute("totalContents", totalContents).addAttribute("numPerPage", limit)
		.addAttribute("pageBar", pageBar);
	  
	  
      return "customerservice/csCenter";
   }
   
   
//	문의 내역
	@RequestMapping("/customerservice/csQList.do")
	public String questionList(@RequestParam(value = "cPage", required = false, defaultValue = "1") int cPage,
			Model model, HttpSession session) {

		int limit = 10; // 한 페이지 당 게시글 수

//		1. 현재 페이지 게시글 목록 가져오기
		Member m = (Member) session.getAttribute("member");

		int mNo = m.getmNo();
		
		ArrayList<Map<String, String>> list = new ArrayList<>(csService.selectQuestionList(cPage, limit, mNo));

//		2. 전체 페이지 게시글 수 가져오기
		int totalContents = csService.selectQuestionTotalContent();

		String pageBar = Utils.getPageBar(totalContents, cPage, limit, "csQList.do");

		model.addAttribute("list", list).addAttribute("totalContents", totalContents).addAttribute("numPerPage", limit)
				.addAttribute("pageBar", pageBar);

		return "customerservice/csQuestionList";
	}
	
// 문의하기 작성
	@RequestMapping(value = "/customerservice/contact.do", method = RequestMethod.POST)
	public String insertQuestion(
			 Model model, HttpSession session, Question question) {
		
		int result;
		Member member = (Member)session.getAttribute("member");
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("mNo", member.getmNo());
		map.put("question", question);
		
		result = csService.insertQuestion(map);
		
		String loc = "/customerservice/csQList.do";
		String msg = "";
		
		if(result >0) {
			msg = "문의를 등록하였습니다.";
			
		} else {
			msg = "문의하기 작성 실패!";
		}
		
		model.addAttribute("loc",loc).addAttribute("msg", msg);
		
		
		return "common/msg";
	}
	

	// 문의 내역 선택 view
	@RequestMapping("/customerservice/csQuestionOneView.do")
   public String selectOneQuestion(@RequestParam int qNo ,Model model) {
		
		
		model.addAttribute("question", csService.selectOneQuestion(qNo));
		
		return "customerservice/csQuestionOneView";
		
	}
	
	// 문의 내역 수정 view
	@RequestMapping("/customerservice/csQuestionUpdateView.do")
	public void questionUpdateView(@RequestParam int qNo, Model model) {
		
		model.addAttribute("question", csService.selectOneQuestion(qNo));
		
	}
	
	// 문의 내역 수정
	@RequestMapping("/customerservice/csQuestionUpdate.do")
	public String questionUpdate(Question question, HttpSession session, Model model) {
		
		int qNo = question.getqNo();
		
		// 원본 게시글 조회하여 특정 부분 수정하기
		Question originQuestion = csService.selectOneQuestion(qNo);

		originQuestion.setqTitle(question.getqTitle());
		originQuestion.setqContent(question.getqContent());
		
		int result = csService.updateQuestion(question);
		
		String loc = "/customerservice/csQList.do";
		String msg = "";
		
		if ( result > 0) {
			msg = "문의하기 수정이 완료되었습니다.";
		} else {
			msg = "문의하기 수정 실패";
		}
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		
		return "common/msg";
	}
	
	// 문의 삭제
	@RequestMapping("/customerservice/csQuestionDelete.do")
	public String questionDelete(@RequestParam int qNo, HttpSession session, Model model) {
		
		int result = csService.deleteQuestion(qNo);
		
		String loc ="/customerservice/csQList.do";
		String msg = "";
		
		
		if(result > 0) {
			msg = "게시글 삭제 성공!";
		} else {
			msg = "게시글 삭제 실패!";
		}
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "common/msg";
	}
	
}
