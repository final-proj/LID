package com.kh.lid.payment.model.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.lid.common.vo.Payment;

@Repository
public class PaymentDaoImpl implements PaymentDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertPayment(Payment payment) {
	
	
		
		
		return sqlSession.insert("payment.insertPayment",payment);
	}

	@Override
	public int updateMember(int mNo) {
		

		
		return sqlSession.update("member.updateLevel",mNo);
	}

	@Override
	public int checkPay(int mNo) {
		
		return sqlSession.selectOne("payment.checkPay",mNo);
	}
	
	
}