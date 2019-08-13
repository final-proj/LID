package com.kh.lid.customerservice.model.service;


import java.util.List;
import java.util.Map;

import com.kh.lid.common.vo.FAQ;
import com.kh.lid.common.vo.Notice;
import com.kh.lid.common.vo.Question;



public interface CustomerServiceService {
	// 문의 작성 메소드
	int insertQuestion(Map<String, Object> map);
	// 문의 내역 메소드
	List<Map<String, String>> selectQuestionList(int cPage, int limit, int mNo);
	
	// 페이지처리를 위한 게시글 총 갯수
	int selectQuestionTotalContent();
	
	// 문의 내역  조회 메소드
	Question selectOneQuestion(int qNo);
	
	// 문의 수정 메소드
	int updateQuestion(Question question);
	
	// 문의 삭제 메소드
	int deleteQuestion(int qNo);
	
	/**
	 * faq List
	 * @param faq
	 * @return
	 */
	List<Map<String, String>> selectListFaq(FAQ faq);
	
	/**
	 * notice List
	 * @param notice
	 * @return
	 */
	List<Map<String, String>> selectListNotice( int cPage, int limit);
	
	/**
	 * 페이지처리를 위한 게시글 총 갯수
	 * @return
	 */
	int selectNoticeTotalContent();
	

	
	
	

	
}