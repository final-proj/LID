<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <title>Love in Daily</title>

    <c:import url="../common/stylesheet.jsp"/>
    
    
    <style>
       /*중복아이디체크관련*/
      div#userId-container{position:relative; padding:0px;}
      div#userId-container span.guide {display:none;font-size: 12px;position:absolute; top:-10px; right:30px;}
      div#userId-container span.ok{color:rgb(110,243,74);}
      div#userId-container span.error, span.invalid{color:red;}
    
    </style>
    
    </head>
    
    <body>
     
     <c:import url="../common/register-header.jsp"/>
    
    <!-- Landing Page Contents
    ================================================= -->
    <div id="lp-register">
       <div class="container wrapper">
        <div class="row">
           <div class="col-sm-5">
            <div class="intro-texts">
            </div>
          </div>
           <div class="col-sm-6 col-sm-offset-1">
            <div class="reg-form-container"> 
            
              <!-- Register/Login Tabs-->
              <div class="reg-options">
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#register" data-toggle="tab">Register</a></li>
                  <li><a href="#login" data-toggle="tab">Login</a></li>
                </ul><!--Tabs End-->
              </div>
              
              
              <!-- 회원 가입 시작 -->
              <!--Registration Form Contents-->
              <div class="tab-content">
                <div class="tab-pane active" id="register">
                  <h3>Register Now !!!</h3>
                  <p class="text-muted">Be cool and join today. Meet millions</p>
                  
                  <!--Register Form-->
                  <form name="registration_form" id='registration_form' class="form-inline" 
                           method="post" action="memberEnrollEnd.do" name="memberEnrollFrm" 
                              onsubmit="return fn_enroll_validate();">
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="email" class="sr-only">Email</label>
                        <input id="mEmail" class="form-control input-group-lg" type="email" name="mEmail" title="Enter Email" placeholder="이메일 - 아이디로 사용됩니다."/>
                       
                      </div>
                    </div>
                      <div class="row" id="userId-container">
                       <!-- 아이디중복검사 코멘트추가 -->
                  <span class="guide ok">사용 가능</span>
                    <span class="guide error">사용 불가 (사용 중인 이메일)</span>
                    <span class="guide invalid">이메일 형식이 아님</span>
                    <input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0"/>
                 </div>                    
                    <br>
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="password" class="sr-only">Password</label>
                        <input id="password" class="form-control input-group-lg" type="password" name="mPwd" title="Enter password" placeholder="비밀번호"/>
                      </div>
                    </div>
            
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="password2" class="sr-only">Password2</label>
                        <input id="password2" class="form-control input-group-lg" type="password" name="mPwd2" title="Enter password" placeholder="비밀번호 확인"/>
                      </div>
                    </div>
                    <br>
                    <div class="row">
                      <div class="form-group col-xs-6">
                        <label for="firstname" class="sr-only">이름</label>
                        <input id="firstname" class="form-control input-group-lg" type="text" name="mName" title="Enter first name" placeholder="이름"/>
                      </div>
                      <div class="form-group col-xs-6">
                        <label for="lastname" class="sr-only">휴대폰</label>
                        <input id="lastname" class="form-control input-group-lg" type="text" name="mPhone" title="Enter last name" placeholder="휴대폰"/>
                      </div>
                      
                    </div>
                    <br>
                    
                    
                  <p><a href="#login" data-toggle="tab">Already have an account?</a></p>
                  <button class="btn btn-primary" type="submit">회원가입</button>
                    
                  </form><!--Register Now Form Ends-->
                </div>
                <!--Registration Form Contents Ends-->
                <!-- 회원 가입 끝 -->
                
                <!--Login-->
                <div class="tab-pane" id="login">
                  <h3>Login</h3>
                  <p class="text-muted">Log into your account</p>
                  
                  <!--Login Form-->
                  <form name="Login_form" id='Login_form' action="${pageContext.request.contextPath}/member/memberLogin.do" method="post">
                     <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="my-email" class="sr-only">Email</label>
                        <input id="my-email" class="form-control input-group-lg" type="text" name="mEmail" title="Enter Email" placeholder="Your Email"/>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="my-password" class="sr-only">Password</label>
                        <input id="my-password" class="form-control input-group-lg" type="password" name="mPwd" title="Enter password" placeholder="Password"/>
                      </div>
                    </div>
                  <p><a href="#">Forgot Password?</a></p>
                  <button class="btn btn-primary" type="submit">Login Now</button>
                  </form><!--Login Form Ends--> 
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 col-sm-offset-6">
          
            <!--Social Icons-->
            <ul class="list-inline social-icons">
              <li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
              <li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
              <li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
              <li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
              <li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    
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
           var p1 = $('#password').val(),
               p2 = $('#password2').val();
           if(p1 != p2){
              alert("패스워드가 일치하지 않습니다.");
              $('#password').focus();
           }
        });
      
    // 아이디 중복 검사
    $("#mEmail").on("keyup", function(){
       
       var mEmail = $(this).val().trim();
       var emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
       
       if(!(emailCheck.test(mEmail))){
          $('.guide.error').hide();
          $('.guide.ok').hide();
          $('.guide.invalid').show();
          
          return;
       }else{
          
          console.log("작동확인!!");
          
          $.ajax({
             
             url : "${pageContext.request.contextPath}/member/checkIdDuplicate.do",
             data : {mEmail : mEmail},
             dataType : "json",
             success : function(data){
                // 참 / 거짓
                console.log(data);
                   // if(data == true){ // stream 방식
                   if(data.isUsable == true){ // json 객체 전달 방식
                      $(".guide.error").hide();
                      $(".guide.invalid").hide();
                      $(".guide.ok").show();
                      $("#idDuplicateCheck").val(1);
                   }else{
                      $(".guide.invalid").hide();
                      $(".guide.ok").hide();
                      $(".guide.error").show();
                      $("#idDuplicateCheck").val(0);
                   }
                }, error : function(req, status, error){
                   console.log("이메일 중복 체크 실패!");
                   // 화면 에러 로그
                   console.log(req);
                   console.log(status);
                   console.log(error);
                }
             
             });
          
          }
      });
   });
       
       
      function fn_enroll_validate(){
      
         var mEmail = $('#mEmail');
         var result = true;
      
         if(userId.val().trim().length < 4){
            alert("아이디는 최소 4글자 이상이어야 합니다.");
            result = false
         }
      
         // 아이디 중복 여부 재검사
         if($('#idDuplicateCheck').val() == 0){
            alert("가입 된 이메일입니다. 가입 확인하세요.");
            result = false;
         }
      
         return result;
      
      }
    
 
   
   
   </script>
   
   </body>
</html>