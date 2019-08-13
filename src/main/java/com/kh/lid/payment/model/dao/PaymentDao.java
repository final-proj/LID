package com.kh.lid.payment.model.dao;

import com.kh.lid.common.vo.Payment;

public interface PaymentDao {

	int insertPayment(Payment payment);
	
	int updateMember(int mNo);
	
	int checkPay(int mNo);
	
	
}
