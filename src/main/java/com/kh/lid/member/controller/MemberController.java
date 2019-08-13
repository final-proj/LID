package com.kh.lid.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.lid.common.vo.Member;
import com.kh.lid.member.model.exception.MemberException;
import com.kh.lid.member.model.service.MemberService;
import com.kh.lid.payment.model.service.PaymentService;

@SessionAttributes(value = { "member" })
@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private PaymentService paymentService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	@RequestMapping("/member/memberEnroll.do")
	public String memberEnroll() {

		return "register/register";
	}

	@RequestMapping("/member/memberEnrollEnd.do")
	public String memberEnrollEnd(Member member, Model model, RedirectAttributes rttr, HttpServletRequest request,
			HttpSession session, SessionStatus sessionStatus) {
		
		System.out.println("member 확인 : " + member);

		String rawPassword = member.getmPwd();
		System.out.println("암호화 전 : " + rawPassword);

		member.setmPwd(bcryptPasswordEncoder.encode(rawPassword));
		System.out.println("암호화 후 : " + member.getmPwd());

		int result = memberService.insertMember(member);

		String loc = "/";
		String msg = "";

		if (result > 0) {
			if (!sessionStatus.isComplete()) {
				sessionStatus.setComplete();
			}
			msg = "이메일 인증 후에 정상적인 이용이 가능합니다. 가입하실때 사용한 이메일을 확인해 주세요!!";
		}else {
			msg = "회원가입이 정상적으로 종료되지 않았습니다!";
		}
		
		 model.addAttribute("loc", loc); model.addAttribute("msg", msg);
		 


		return "common/msg";
	}

	// 이메일 인증 클릭시 실행 컨트롤러
	@RequestMapping(value = "member/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String mEmail, Model model) throws Exception { // 이메일인증
		memberService.checkAuth(mEmail);
		System.out.println(mEmail);
		model.addAttribute("mEmail", mEmail);

		return "register/emailConfirm";
	}

	@RequestMapping(value = "/member/memberLogin.do", method = RequestMethod.POST)
	public ModelAndView memberLogin(@RequestParam String mEmail, @RequestParam String mPwd) {

		ModelAndView mv = new ModelAndView();

		try {
			Member m = memberService.selectMember(mEmail);

			String loc = "/";
			String msg = "";

			if (m == null) {
				msg = "존재하지 않는 회원입니다.";
			} else {
				if (bcryptPasswordEncoder.matches(mPwd, m.getmPwd())) {
					if (m.getCheckAuth() == 1) {
						if(m.getmLevel().equals("유료회원")) {
							int result = paymentService.checkPay(m.getmNo());
							if(result != 1) {
								memberService.returnLevel(m.getmNo());
							}
						}
						msg = "로그인 성공!";
						mv.addObject("member", m);
						
						
					} else {
						
						msg = "이메일 인증이 완료되지 않았습니다. 이메일 인증을 완료해주세요!";
					}
				} else {
					msg = "비밀번호가 일치하지 않습니다!!";
				}
			}

			mv.addObject("loc", loc).addObject("msg", msg);

			mv.setViewName("common/msg");
		} catch (Exception e) {
			throw new MemberException("로그인 에러 : " + e.getMessage());
		}

		return mv;
	}

	@RequestMapping("/member/memberLogout")
	public String memberLogout(SessionStatus sessionStatus) {

		// sessionStatus : 현재 연결되어 있는 세션의 상태를 관리하는 객체
		System.out.println("session 상태 확인 : " + sessionStatus.isComplete());

		if (!sessionStatus.isComplete()) {
			sessionStatus.setComplete();
		}

		return "redirect:/";
	}

	@RequestMapping("/member/checkIdDuplicate.do")
	@ResponseBody
	public Map<String, Object> idDupCheck(@RequestParam String mEmail) {

		Map<String, Object> map = new HashMap<>();

		boolean isUsable = memberService.checkIdDuplicate(mEmail) == 0 ? true : false;

		map.put("isUsable", isUsable);

		System.out.println(isUsable);

		return map;
	}

	@RequestMapping("/member/updateMemberProfile.do")

	public String updateMemberProfile() {

		return "mypage/mypage";
	}
	
	@RequestMapping(value = "/member/searchPassword.do", method = RequestMethod.POST)
	public String searchPwd(Member member, Model model, SessionStatus sessionStatus) {
		
		int ranNum = (int)(Math.random()*100000);
		String newPwd = Integer.toString(ranNum);
		System.out.println("암호화 전 : " + newPwd);
		
		member.setmPwd(bcryptPasswordEncoder.encode(newPwd));
		System.out.println("암호화 후 : " + member.getmPwd());
		
		int result = memberService.updateMemberPassword(member, newPwd);
		
		String loc = "/";
		String msg = "";
		
		if(result > 0) {
			
			if (!sessionStatus.isComplete()) {
				sessionStatus.setComplete();
			}
			msg = "정상적으로 임시 비밀번호가 발급되었습니다. 메일을 확인해주세요!";
		}else {
			if (!sessionStatus.isComplete()) {
				sessionStatus.setComplete();
			}
			msg = "입력하신 정보가 일치하지 않습니다.";
		}
		
		model.addAttribute("loc", loc); model.addAttribute("msg", msg);
		
		return "common/msg";
	}

}