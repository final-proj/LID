<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<title>Love in Daily</title>
	<!-- stylesheet.jsp -->
	<c:import url="../common/stylesheet.jsp" />
	
	<style>
       /*현재비밀번호 체크관련*/
      div#password-container{position:relative; padding:0px;}
      div#password-container span.pwdCheck {display:none;font-size: 14px;position:absolute; top:5px; left:13px;}
      div#password-container span.ok{color:rgb(110,243,74);}
      div#password-container span.error, span.invalid{color:red;}
      
      div#password2-container{position:relative; padding:0px;}
      div#password2-container span.pwdCheck2 {display:none;font-size: 14px;position:absolute; top:5px; left:13px;}
      div#password2-container span.ok{color:rgb(110,243,74);}
      div#password2-container span.error, span.invalid{color:red;}
    
    </style>
	</head>
<body>
	<!-- header 영역 -->
	<c:import url="../common/header.jsp" />

    <div class="container">

      <!-- Timeline
      ================================================= -->
      <div class="timeline">
        <div class="timeline-cover">

         

        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3">
              
           <c:import url="../common/setting-menubar.jsp">
            	<c:param name="pwdChange" value="active"></c:param>
            </c:import>
            
            </div>
            <div class="col-md-8">

              <!-- Change Password
              ================================================= -->
              <div class="edit-profile-container">
                <div class="block-title">
                  <h4 class="grey"><i class="icon ion-ios-locked-outline"></i>비밀번호 변경</h4>
                  <div class="line"></div> <br /><br />
                 
                </div>
                <div class="edit-block">
                  <form name="update-pass" id="education" class="form-inline" action="${pageContext.request.contextPath}/setting/pwdChange.do" method="post"> 
                    <div class="row">
                      <div class="form-group col-xs-6">
                      	<label for="my-email">이메일  : ${member.mEmail}</label> <br />
                        <label for="my-password">현재 비밀번호</label>
                        <input id="password" class="form-control input-group-lg" type="password" name="password" title="Enter password" placeholder="현재 비밀번호를 입력해주세요."/>
                        <br />
                        
                        <div class="row" id="password-container"> <br />
                        <span class="pwdCheck ok">현재 비밀번호와 일치 합니다.</span>
                        <span class="pwdCheck error">현재 비밀번호가 틀립니다.</span>
                        <input type="hidden" name="pwdDuplicateCheck" id="pwdDuplicateCheck" value="0" />
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-6">
                        <label>변경할 비밀번호</label>
                        <input class="form-control input-group-lg" type="password" name="mPwd" title="Enter password" placeholder="New password" id="password_"/>
                      </div>
                      <div class="form-group col-xs-6">
                        <label>비밀번호 확인</label>
                        <input class="form-control input-group-lg" type="password" name="mPwd_2" title="Enter password" placeholder="Confirm password" id="password2"/>
                      </div>
                    </div>
                      <div class="row" id="password2-container">
                        <span class="pwdCheck2 ok">비밀번호와 일치 합니다.</span>
                        <span class="pwdCheck2 error">비밀번호가 일치하지 않습니다.</span>
                       </div>
                    <button type="submit" class="btn btn-primary">비밀번호 변경하기</button>
                  </form>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>


    <!-- footer -->
    <c:import url="../common/footer.jsp" />
    
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>

    <!-- script  -->
	<c:import url="../common/scripts.jsp" />
	
	<script>
	$(function(){
		// 비밀번호 확인 일치 여부
		$('#password2').blur(function(){
			var p1 = $('#password_').val(),
				p2 = $('#password2').val();
			
			
			
			if(p1 != p2){
				$('.pwdCheck2.ok').hide();
				$('.pwdCheck2.error').show();
				alert("패스워드가 일치하지 않습니다.");
				$('#password_').focus();
				return false;
			} else {
			
				$('.pwdCheck2.ok').show();
				$('.pwdCheck2.error').hide();	
			}
		});
		
		// 현재 비밀번호 유효성 검사
		// ajax로 구현할 예정	
		 $("#password").on("keyup", function(){
			var password = $(this).val().trim();
			
			$.ajax({
				url : "${pageContext.request.contextPath}/setting/checkPwdDuplicate.do",
				data : {password : password},
				dataType : "json",
				success : function(data){
					// 참  / 거짓
					console.log(data);
					if(data.isUsable == true){
						$(".pwdCheck.ok").show();
						$(".pwdCheck.error").hide();
						$("#pwdDuplicateCheck").val(1);
					} else {
						$(".pwdCheck.ok").hide();
						$(".pwdCheck.error").show();
						$("#pwdDuplicateCheck").val(0);
					}
				}, error : function(error) {
						console.log(error);
					}
					
				});
			});	
			
		
	
	});
	</script>
    
  </body>
</html>
