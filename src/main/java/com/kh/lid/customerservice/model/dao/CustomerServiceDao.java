package com.kh.lid.customerservice.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.lid.common.vo.FAQ;
import com.kh.lid.common.vo.Notice;
import com.kh.lid.common.vo.Question;



public interface CustomerServiceDao {

	int insertQuestion(Map<String, Object> map);


	List<Map<String, String>> selectQuestionList(int cPage, int limit, int mNo);

	int selectQuetionTotalContent();

	Question selectOneQuestion(int qNo);

	int selectOneQuestion(Question question);

	int deleteQuestion(int qNo);

	List<Map<String, String>> selectListFaq(FAQ faq);



	List<Map<String, String>> selectListNotice(int cPage, int limit);


	int selectNoticeTotalContent();
	
	
	

}
