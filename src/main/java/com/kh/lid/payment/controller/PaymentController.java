package com.kh.lid.payment.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.lid.common.vo.Member;
import com.kh.lid.common.vo.Payment;
import com.kh.lid.member.model.service.MemberService;
import com.kh.lid.payment.model.service.PaymentService;

@SessionAttributes(value = {"member"})
@Controller
public class PaymentController {

   
   @Autowired
   private PaymentService PaymentService;
   @Autowired
   private MemberService memberService;
   
   @RequestMapping("/payment/payment.do")
   public String payment() {
	  
      return "payment/payment";
		
      
   }
   
   @RequestMapping("/payment/pay.do")
   public String pay(Member member, Model model) {

	String loc = "/";
	String msg = "";
	
	if (member.getmLevel().equals("일반회원")) {
		loc = "/payment/payment.do";
		
		
	} else {

		msg="유료회원은 정기권 만료시 재결제가 가능합니다.";

	}
	
	
	
	model.addAttribute("loc",loc);
	model.addAttribute("msg", msg);
	return "common/msg";
	
   }
   @RequestMapping("/payment/payResult.do")
   public String payResult(@RequestParam int pTicket, Member member ,Model model) {
      
		
	   
	   Payment p = new Payment(pTicket, member.getmNo());
	  
	   Member m = memberService.selectMember(member.getmEmail());
	   
	   model.addAttribute("member",m);


	   PaymentService.insertPayment(p);
	  
	  
	   return "payment/payment-result";
	   
	   
   }
  
}	
