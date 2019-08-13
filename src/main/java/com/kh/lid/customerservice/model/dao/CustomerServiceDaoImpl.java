package com.kh.lid.customerservice.model.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.lid.common.vo.FAQ;
import com.kh.lid.common.vo.Notice;
import com.kh.lid.common.vo.Question;



@Repository
public class CustomerServiceDaoImpl implements CustomerServiceDao {
	
	@Autowired SqlSessionTemplate sqlSession;
	
	// 문의하기 작성
	@Override
	public int insertQuestion(Map<String, Object> map) {
		
		
		
		return sqlSession.insert("question.insertQuestion", map);
	}
	
	
	
	// 문의 내역
	@Override
	public List<Map<String, String>> selectQuestionList(int cPage, int limit, int mNo) {
		RowBounds rows = new RowBounds((cPage -1) * limit, limit);
		
		return sqlSession.selectList("question.selectQuestionList", mNo, rows);
	}

	@Override
	public int selectQuetionTotalContent() {
		
		return sqlSession.selectOne("question.selectQuestionTotalContents");
	}
	// 문의 내역 조회
	@Override
	public Question selectOneQuestion(int qNo) {
		
		return sqlSession.selectOne("question.selectOneQuestion", qNo);
	}
	
	// 문의 수정
	@Override
	public int selectOneQuestion(Question question) {
		
		return sqlSession.update("question.updateQuestion", question);
	}
	// 문의 삭제
	@Override
	public int deleteQuestion(int qNo) {
		
		return sqlSession.delete("question.deleteQuestion", qNo);
	}
	// faq list
	@Override
	public List<Map<String, String>> selectListFaq(FAQ faq) {
		
		return sqlSession.selectList("faq.selectListFaq", faq);
	}
	
	// notice list	
	@Override
	public List<Map<String, String>> selectListNotice(int cPage, int limit) {
		RowBounds rows = new RowBounds((cPage -1) * limit, limit);
		
		System.out.println("selectListNotice" + sqlSession.selectList("notice.selectListNotice", null, rows));
		
		return sqlSession.selectList("notice.selectListNotice", null, rows);
	}


	@Override
	public int selectNoticeTotalContent() {
		
		return sqlSession.selectOne("notice.selectNoticeTotalContent");
	}
	
	
	

	
}
