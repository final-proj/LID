package com.kh.lid.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lid.common.vo.Payment;
import com.kh.lid.payment.model.dao.PaymentDao;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentDao paymentDao;

	@Override
	public int insertPayment(Payment payment) {
		
		 int result = 0;
		 
	
		
		
		 
		result = paymentDao.insertPayment(payment);

		result *= paymentDao.updateMember(payment.getpMno());
		
		
	
		
		
		return  result;
	}

	@Override
	public int checkPay(int mNo) {
		
		
		return paymentDao.checkPay(mNo);
	}

	
	}

	
	
	


	
	


