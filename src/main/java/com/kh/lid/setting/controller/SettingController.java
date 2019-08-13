package com.kh.lid.setting.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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

import com.kh.lid.common.vo.Block;
import com.kh.lid.common.vo.MatchingSetting;
import com.kh.lid.common.vo.Member;
import com.kh.lid.common.vo.MemberProfile;
import com.kh.lid.common.vo.Payment;
import com.kh.lid.member.model.exception.MemberException;
import com.kh.lid.setting.model.service.SettingService;

@SessionAttributes(value= {"member"})

@Controller
public class SettingController {

	@Autowired
	private SettingService settingService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	// 회원 프로필 수정 view
	@RequestMapping("/setting/updateMemberProfile.do")
	public String updateMemberProfile(Model model, HttpSession session) {
		
		Member m = (Member) session.getAttribute("member");
		
		MemberProfile mp = settingService.selectProfileOne(m.getmNo());
		mp.setMpMno(m.getmNo());
		
		model.addAttribute("mp", mp);
		
		System.out.println("mp :" + mp);
		
        
		return "setting/setting-profile";
	}
	
	// 회원 프로필 수정
	@RequestMapping(value="/setting/updateMemberProfile2.do", method = RequestMethod.POST)
	public String updateProfile(
			MemberProfile memberProfile, Model model, HttpSession session,
			@RequestParam String latitude, @RequestParam String longitude) {
		
		
		
		Member member = (Member)session.getAttribute("member");
		// 회원 정보 수정
		
		memberProfile.setMpLatitude(Float.parseFloat(latitude));
		memberProfile.setMpLongitude(Float.parseFloat(longitude));
		memberProfile.setMpMno(member.getmNo());
		System.out.println("멤버 프로필 수정 : " + memberProfile);
		
		int result = settingService.updateProfile(member.getmNo(), memberProfile);
		
		System.out.println("result :" +result);
		String loc = "/";
		String msg = "";
		
		if(result > 0) {
			msg = "회원프로필 수정 성공";
		} else {
			msg = "회원 프로필 수정 실패";
		}
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		/*
		 * System.out.println("service: " +
		 * settingService.updateProfile(memberProfile));
		 */
		
		
		System.out.println("memberProfile" + memberProfile);
		return "common/msg";
	}
	/**
	 * 닉네임 중복 체크
	 * @param mpNickname
	 * @return
	 */
	@RequestMapping(value="/setting/checkNicknameDuplicate.do")
	@ResponseBody
	public Map<String, Object> nickNameDupCheck(
			@RequestParam String mpNickname){
		
		Map<String, Object> map = new HashMap<>();
		
		boolean isUsable 
			= settingService.checkNicknameDuplicate(mpNickname)== 0 ? true : false;
		
		map.put("isUsable", isUsable);
		
		System.out.println(isUsable);
		
		return map;
	}
	
	/**
	 * 회원 탈퇴
	 * @return
	 */
	@RequestMapping("/setting/deleteMember.do")
	public String deleteMember(@RequestParam String mEmail,
			SessionStatus sessionStatus, Model model) {
		
		
		try {
			int result = settingService.deleteMember(mEmail);
			
			if(result > 0) sessionStatus.setComplete();
			
			System.out.println("result : " + result);
			String loc = "/";
			String msg = "";
			
			model.addAttribute("loc", loc).addAttribute("msg", msg);
			
			if(result > 0) msg ="회원 탈퇴하셨습니다. 서비스를 이용해 주셔서 감사합니다.";
			else msg = "회원 탈퇴 실패";
			
		} catch (Exception e) {
			throw new MemberException("회원 탈퇴 에러 발생 :" + e.getMessage());
		}
		
		
		return "common/msg";
	}

	// 차단 목록
	@RequestMapping("/setting/blockList.do")
	public String blackList(Model model, HttpSession session) {
		
		Member member = (Member)session.getAttribute("member");
		ArrayList<Map<String, String>> list = new ArrayList<>(settingService.selectListBlock(member.getmNo()));
		
		model.addAttribute("member", member);
		model.addAttribute("list", list);
		
		
		return "setting/setting-block";
	}
	// 차단 해제하기
	@RequestMapping("/setting/blockDelete.do")
	public String blockDelete(@RequestParam int mNo, @RequestParam int blkedMno, HttpSession session, Model model) {
		Block blk = new Block();
		blk.setBlkMno(mNo);
		blk.setBlkedMno(blkedMno);
		
		System.out.println(blk);
		
		int result = settingService.deleteBlock(blk);
		
		String loc = "/setting/blockList.do";
		String msg = "";
		
		if(result >0) {
			msg = "차단해제하기 성공!";
		} else {
			msg = "차단 해제하기 실패!";
		}
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "common/msg";
		
	}

	// 정기권 확인
	@RequestMapping("/setting/seasonTicket.do")
	public String seasonTicket(Model model, HttpSession session) {
		
		Member member = (Member)session.getAttribute("member");
		
		 ArrayList<Map<String, String>> list = new
		 ArrayList<>(settingService.seasonTicketList(member.getmNo()));
		
		
		model.addAttribute("member", member).addAttribute("list", list);
	
		
		
		return "setting/setting-ticket";
	}

	// 연령대 범위 설정 view
	@RequestMapping("/setting/ageSetting.do")
	public String ageSetting(Model model, HttpSession session) {
		
		Member m = (Member)session.getAttribute("member");
		
		int mNo = m.getmNo();
		
		System.out.println("memberNo : " + mNo);
		
		/* model.addAttribute("matchingSetting", updateMatching(mNo)); */
		
		return "setting/setting-age";
	}
	
	// 연령대 범위 설정
	@RequestMapping("/setting/matchingSetting.do")
	public String updateMatching(Model model, HttpSession session, MatchingSetting ms) {
		
		Member m = (Member)session.getAttribute("member");
		
		ms.setMsMno(m.getmNo());
		
		int result = settingService.updateMathcing(ms);
		
		
		
		String loc = "/mypage/goMyAbout.do";
		String msg = "";
		
		if(result > 0) {
			msg = "범위 설정 성공!";
		} else {
			msg = "범위 설정 실패!";
		}
		
		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		return "common/msg";
	}
	

	// 비밀번호 변경 View
	@RequestMapping("/setting/setting-pwdChange.do")
	public String settingpwdChange() {
		
		return "setting/setting-pwdChange";
	}

	// 비밀번호 변경
	@RequestMapping("/setting/pwdChange.do")
	public String pwdChange(Model model, Member member) {

		// 이전 비밀번호
		String rawPassword = member.getmPwd();
		
		System.out.println("암호화 전 : " + rawPassword);

		member.setmPwd(bcryptPasswordEncoder.encode(rawPassword));

		System.out.println("암호화 후 : " + member.getmPwd());

		int result = settingService.updatePwd(member);

		String loc = "/setting/setting-pwdChange.do";
		String msg = "";

		if (result > 0 ) {
			msg = "비밀번호 재 설정 성공!";
		} else {
			msg = "비밀번호 재 설정 실패!";
		}

		model.addAttribute("loc", loc).addAttribute("msg", msg);
		
		System.out.println("result : " + result);
		System.out.println("loc : " + loc);
		
		return "common/msg";
	}

	
	// 현재 비밀번호 체크 여부

	
	  @RequestMapping(value = "/setting/checkPwdDuplicate.do")
	  @ResponseBody public Map<String, Object> pwdDupCheck(@RequestParam String password, HttpSession session) {
	  
	  Map<String, Object> map = new HashMap<>();
	  
	  Member m = (Member)session.getAttribute("member");
	  boolean isUsable = bcryptPasswordEncoder.matches(password, m.getmPwd());
	  
	  map.put("isUsable", isUsable);
	  return map;
	  }
	 

}
