package com.kh.lid.payment.model.service;

import com.kh.lid.common.vo.Payment;

public interface PaymentService {


	int insertPayment(Payment payment);

	int checkPay(int mNo);
	
	

	

	
	
}
