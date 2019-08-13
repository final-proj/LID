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
    	
    	.modal {
        		text-align: center;
		}
 
		@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        		}
		}
 
		.modal-dialog {
        		display: inline-block;
        		text-align: left;
        		vertical-align: middle;
		}



		.modal-dialog.modal-size {
  			width: 25%;
  			height: 40%;
  			margin: 0;
  			padding: 0;
		}
		.modal-content.modal-size {
  			height: auto;
  			min-height: 100%;
  			border-radius: 0; 
		}
    	
    	
    </style>
    </head>
    <body>
  	<c:import url="../common/header.jsp">
  		<c:param name="index" value="lazy-load visible"></c:param>
  	</c:import>
  
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>

    <!-- Top Banner
    ================================================= -->
		<section id="banner">
		<div class="container">

        <!-- Sign Up Form
        ================================================= -->
        <div class="sign-up-form">
					<a href="#" class="logo"><img src="${pageContext.request.contextPath}/resources/images/LID_logo.png" style="width:500px;" alt="Friend Finder"/></a>
					<c:if test="${empty member}">
					<div class="line-divider"></div>
					<div class="form-wrapper">
						<form action="${pageContext.request.contextPath}/member/memberLogin.do" method="post">
							<fieldset class="form-group">
								<input type="email" class="form-control" id="example-email" name="mEmail" placeholder="Enter email">
							</fieldset>
							<fieldset class="form-group">
								<input type="password" class="form-control" id="example-password" name="mPwd" placeholder="Enter a password">
							</fieldset>
							<button class="btn-secondary" type="submit">로그인</button>
						</form>
					</div>
					<a href="${pageContext.request.contextPath}/member/memberEnroll.do">Love in Daliy의 계정이 없으신가요? -회원가입-</a><br>
					
					<button  
                              data-toggle="modal" data-target="#del-modal">비밀번호를 잊으셨나요? -비밀번호 찾기-</button>
                              
                              
                    
                    <!-- 모달 비번찾기 -->
					<div class="modal fade" id="del-modal">
						<div class="modal-dialog modal-size">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title">비밀번호 찾기</h4>
								</div>
								<div class="modal-body">
									<p style="color:black;">가입하신 이메일 주소와 가입자명을 정확하게 입력해주세요.</p>
									<p style="color:black;">가입하신 이메일 주소로 임시 비밀번호가 발급됩니다!</p>
									<p style="color:black;">임시 비밀번호가 발급 된 이후로는 기존 비밀번호로 로그인이 불가능합니다!!</p>
									<form id="searchPassword">
									<input style="margin-top:10px;" class="form-control" id="searchEmail" type="email" name="mEmail" placeholder="가입한 이메일 입력" />
									<input style="margin-top:10px;" class="form-control" id="searchName" type="text" name="mName" placeholder="가입한 성명 입력" />
									</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">취소</button>
									<button type="button" class="btn btn-primary" type="button"
										onclick="searchPwd();">임시 비밀번호 발급</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

<script>
	
	function searchPwd(){
		
		$('#searchPassword').attr("action", "${pageContext.request.contextPath}/member/searchPassword.do");
		$('#searchPassword').attr("method", "post");
		$('#searchPassword').submit();
		
	}
		
	
	
	

</script>



				</c:if>
					<c:if test="${!empty member}">
					
						<p style="font-size: 18px;"><span style="font-size : 20px;">${ member.mName }</span> 님 <br>새로운 만남이 기다리고 있어요!</p> <br />
						<button class="btn-secondary" onclick="location.href='${pageContext.request.contextPath}/member/memberLogout.do'">로그아웃</button>
					
					</c:if>
				</div><!-- Sign Up Form End -->

        <svg class="arrows hidden-xs hidden-sm">
          <path class="a1" d="M0 0 L30 32 L60 0"></path>
          <path class="a2" d="M0 20 L30 52 L60 20"></path>
          <path class="a3" d="M0 40 L30 72 L60 40"></path>
        </svg>
			</div>
		</section>

	
    <!-- Features Section
    ================================================= -->
		<section id="features">
			<div class="container wrapper">
				<h1 class="section-title slideDown">social herd</h1>
				<div class="row slideUp">
					<div class="feature-item col-md-2 col-sm-6 col-xs-6 col-md-offset-2">
						<div class="feature-icon"><i class="icon ion-person-add"></i></div>
						<h3>Make Friends</h3>
					</div>
					<div class="feature-item col-md-2 col-sm-6 col-xs-6">
						<div class="feature-icon"><i class="icon ion-images"></i></div>
						<h3>Publish Posts</h3>
					</div>
					<div class="feature-item col-md-2 col-sm-6 col-xs-6">
						<div class="feature-icon"><i class="icon ion-chatbox-working"></i></div>
						<h3>Private Chats</h3>
					</div>
					<div class="feature-item col-md-2 col-sm-6 col-xs-6">
						<div class="feature-icon"><i class="icon ion-compose"></i></div>
						<h3>Create Polls</h3>
					</div>
				</div>
				<h2 class="sub-title">Love in Daily Total number of members</h2>
				
				<div id="incremental-counter" data-value="${result}"></div>
				<p>People Already Signed Up</p>
				
				<img src="${pageContext.request.contextPath}/resources/images/face-map.png" alt="" class="img-responsive face-map slideUp hidden-sm hidden-xs" />
				
			</div>

		</section>
		
    <!-- Image Divider
    ================================================= -->
    <div class="img-divider hidden-sm hidden-xs"></div>

    <!-- Facts Section
    ================================================= -->
		<section id="site-facts">
			<div class="container wrapper">
				<div class="circle">
					<ul class="facts-list">
						<li>
							<div class="fact-icon"><i class="icon ion-ios-people-outline"></i></div>
							<h3 class="text-white" id="countMember"></h3>
							<p>People registered</p>
						</li>
						<li>
							<div class="fact-icon"><i class="icon ion-images"></i></div>
							<h3 class="text-white" id="countBoard"></h3>
							<p>Posts published</p>
						</li>
						<li>
							<div class="fact-icon"><i class="icon ion-checkmark-round"></i></div>
							<h3 class="text-white">41,242</h3>
							<p>People online</p>
						</li>
					</ul>
				</div>
			</div>
		</section>

    <!-- Live Feed Section
    ================================================= -->
		<section id="live-feed">
			<div class="container wrapper">
				<h1 class="section-title slideDown">live feed</h1>
				<ul class="online-users list-inline slideUp">
					<li><a href="#" title="Alexis Clark"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
          <li><a href="#" title="James Carter"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
          <li><a href="#" title="Robert Cook"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
          <li><a href="#" title="Richard Bell"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
          <li><a href="#" title="Anna Young"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
          <li><a href="#" title="Julia Cox"><img src="http://placehold.it/300x300" alt="" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
				</ul>
				<h2 class="sub-title">see what’s happening now</h2>
				<div class="row">
					<div class="col-md-4 col-sm-6 col-md-offset-2">
						
						<c:forEach items="${list1}" var="bl1">
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">${bl1.mpBNickname}</a> 님이 게시물을 등록하였습니다.</p>
								<p class="text-muted">${bl1.bDate}</p>
							</div>
						</div>
						</c:forEach>
						
					</div>
					<div class="col-md-4 col-sm-6">
					
					<c:forEach items="${list2}" var="bl2">
						<div class="feed-item">
							<img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo-sm" />
							<div class="live-activity">
								<p><a href="#" class="profile-link">${bl2.mpBNickname}</a> 님이 게시물을 등록하였습니다.</p>
								<p class="text-muted">${bl2.bDate}</p>
							</div>
						</div>
					</c:forEach>
					
					</div>
				</div>
			</div>
		</section>

    
	<c:import url="../common/footer.jsp"/>

	<c:import url="../common/scripts.jsp"/>
	
	
	<script>
		
			$(function(){
				
				$.ajax({
					url : "${pageContext.request.contextPath}/mainpage/countMember.do",
					dataType : "json",
					async : false,
					success : function(data) {
						// console.log($('#incremental-counter').data('value', data));
						// $('#incremental-counter').data('value', data);
						/* $('#incremental-counter').val(data); */
						
						
						$('#countMember').append(data);
						console.log(data);
					}, error : function(data) {
						console.log(data);
					}
				});
				
				// 총 게시물 수
				$.ajax({
					url : "${pageContext.request.contextPath}/mainpage/countBoard.do",
					dataType : "json",
					async : false,
					success : function(data) {
						$('#countBoard').append(data);
						console.log(data);
					}, error : function(date) {
						console.log(data);
					}
				});
				
			});
			
			
			
		</script>
    
	</body>
</html>
