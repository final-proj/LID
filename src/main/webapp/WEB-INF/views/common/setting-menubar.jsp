<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<!--Edit Profile Menu-->
<h4 style="text-align: center;">Setting Page</h4>
 <ul class="edit-menu">
 	<li class="${param.profile}"><i class="icon ion-android-checkmark-circle" ></i>
 		<a href="${pageContext.request.contextPath}/setting/updateMemberProfile.do">계정 설정</a>
	</li>
 	<li class="${param.block}"><i class="icon ion-backspace-outline"></i>
 		<a href="${pageContext.request.contextPath}/setting/blockList.do?">차단 목록</a>
 	</li>
 	<li class="${param.ticket}"><i class="icon ion-social-usd"></i>
 		<a href="${pageContext.request.contextPath}/setting/seasonTicket.do">정기권 확인하기</a>
 	</li>
   <li class="${param.age}"><i class="icon ion-ios-settings"></i>
   	<a href="${pageContext.request.contextPath}/setting/ageSetting.do">매칭 설정</a>
   </li>
 	<li class="${param.pwdChange}"><i class="icon ion-ios-locked-outline"></i>
 		<a href="${pageContext.request.contextPath}/setting/setting-pwdChange.do">비밀번호 변경</a>
 	</li>
 </ul>