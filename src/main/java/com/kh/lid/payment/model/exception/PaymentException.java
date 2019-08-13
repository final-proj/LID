package com.kh.lid.payment.model.exception;

public class PaymentException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public PaymentException() {}
	
	public PaymentException(String msg) {
		super(msg);
	}

}
