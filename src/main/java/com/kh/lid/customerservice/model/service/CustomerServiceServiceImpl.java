package com.kh.lid.customerservice.model.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lid.common.vo.FAQ;
import com.kh.lid.common.vo.Notice;
import com.kh.lid.common.vo.Question;
import com.kh.lid.customerservice.model.dao.CustomerServiceDao;


@Service
public class CustomerServiceServiceImpl implements CustomerServiceService {
   
   @Autowired
   private CustomerServiceDao csDao;
   
// 문의하기 작성
	
	@Override
	public int insertQuestion(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return csDao.insertQuestion(map);
	}
	
	
	

	@Override
	public List<Map<String, String>> selectQuestionList(int cPage, int limit, int mNo) {
		// TODO Auto-generated method stub
		return csDao.selectQuestionList(cPage, limit, mNo);
	}


	@Override
	public int selectQuestionTotalContent() {
		// TODO Auto-generated method stub
		return csDao.selectQuetionTotalContent();
	}

	@Override
	public Question selectOneQuestion(int qNo) {
		// TODO Auto-generated method stub
		return csDao.selectOneQuestion(qNo);
	}

	@Override
	public int updateQuestion(Question question) {
		
		return csDao.selectOneQuestion(question);
	}

	@Override
	public int deleteQuestion(int qNo) {
		
		return csDao.deleteQuestion(qNo);
	}

	@Override
	public List<Map<String, String>> selectListFaq(FAQ faq) {
		
		return csDao.selectListFaq(faq);
	}




	@Override
	public List<Map<String, String>> selectListNotice(int cPage, int limit) {
		
		return csDao.selectListNotice(cPage, limit);
	}




	@Override
	public int selectNoticeTotalContent() {
		
		return csDao.selectNoticeTotalContent();
	}
	

	
	
	

	

}