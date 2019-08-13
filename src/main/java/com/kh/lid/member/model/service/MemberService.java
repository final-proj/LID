package com.kh.lid.member.model.service;

import com.kh.lid.common.vo.Member;

public interface MemberService {
   
   int insertMember(Member member);
   
   Member selectMember(String mEmail);
   
   int updateMemberProfile(Member member);
   
   int updateMemberPassword(Member member, String newPwd);
   
   int deleteMember(String mEmail);
   
   int checkIdDuplicate(String mEmail);

   void checkAuth(String mEmail);
   
   int returnLevel(int mNo);

}