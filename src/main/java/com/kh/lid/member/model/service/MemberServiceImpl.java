
package com.kh.lid.member.model.service;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.inject.Inject;
import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.lid.member.model.dao.MemberDao;
import com.kh.lid.common.mailHandler.MailHandler;
import com.kh.lid.common.tempKey.TempKey;
import com.kh.lid.common.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private JavaMailSender mailSender;

	@Autowired
	private MemberDao memberDao;

	@Override
	public Member selectMember(String mEmail) {
		// TODO Auto-generated method stub
		return memberDao.selectMember(mEmail);
	}

	@Override
	public int deleteMember(String mEmail) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int checkIdDuplicate(String mEmail) {
		HashMap<String, Object> hmap = new HashMap<String, Object>();

		hmap.put("mEmail", mEmail);

		return memberDao.checkIdDuplicate(hmap);
	}

	@Transactional
	@Override
	public int insertMember(Member member) {

		int result = memberDao.insertMember(member);

		String key = new TempKey().getKey(50, false); // 인증키 생성

		memberDao.createAuthKey(member.getmEmail(), key); // 인증키 DB저장

		try {
			MailHandler sendMail = new MailHandler(mailSender);
			sendMail.setSubject("[Love in Daily 서비스 이메일 인증]");
			sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
					.append("<a href='http://localhost:8088/lid/member/emailConfirm?mEmail=").append(member.getmEmail())
					.append("&key=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
			sendMail.setFrom("testlsh1474@gmail.com", "Love in Daily 운영자");
			sendMail.setTo(member.getmEmail());
			sendMail.send();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int updateMemberProfile(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMemberPassword(Member member, String newPwd) {
		// TODO Auto-generated method stub
		int result = 0;
		Member m = new Member();
		m = memberDao.checkEmail(member);
		if (!(m==null)) {
			if (m.getmEmail().equals(member.getmEmail()) && m.getmName().equals(member.getmName())) {
				result = memberDao.updateMemberPassword(member);

				try {
					MailHandler sendMail = new MailHandler(mailSender);
					sendMail.setSubject("[Love in Daily 임시 비밀번호 발급]");
					sendMail.setText(new StringBuffer().append("<h1>임시 비밀번호 발급</h1>").append(newPwd).toString());
					sendMail.setFrom("testlsh1474@gmail.com", "Love in Daily 운영자");
					sendMail.setTo(member.getmEmail());
					sendMail.send();
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} 
		}
		return result;
	}

	@Override
	public void checkAuth(String mEmail) {
		// TODO Auto-generated method stub
		memberDao.checkAuth(mEmail);
		
	}

	@Override
	public int returnLevel(int mNo) {
		
		return memberDao.returnLevel(mNo);
	}
}