<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="This is social network html5 template available in themeforest......" />
<meta name="keywords"
	content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
<meta name="robots" content="index, follow" />

<style>
::.form-control-placeholder { /* 크롬 4–56 */
    color: #fff;
}

</style>
<!-- Header
    ================================================= -->
<header id="header" class="${param.index}">
	<nav class="navbar navbar-default navbar-fixed-top menu">
		<div class="container">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">

				<a class="navbar-brand" href="${path}"><img
					src="${path}/resources/images/LID_logo.png"
					alt="logo"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="header-wrap">
				<form class="navbar-form navbar-right hidden-sm">
					<!-- <div class="form-group">
						<i class="icon ion-android-search"></i> <input type="text"
							class="form-control" placeholder="Search friends, photos, videos">
					</div> -->
				</form>
				<div class="header-button">
					<div class="noti-wrap">
					   <div class="noti__item">
							<a href="${path}/search/goSearchPage.do"><i class="zmdi zmdi-search"></i></a>
						</div>
						<div class="noti__item js-item-menu">
							<i class="zmdi zmdi-comment-more"></i> <span class="quantity">1</span>
							<div class="mess-dropdown js-dropdown">
								<div class="mess__title">
									<p>You have 2 news message</p>
								</div>
								<div class="mess__item">
									<div class="image img-cir img-40">
										<img src="${path}/resources/images/icon/avatar-06.jpg" alt="Michelle Moreno">
									</div>
									<div class="content">
										<h6>Michelle Moreno</h6>
										<p>Have sent a photo</p>
										<span class="time">3 min ago</span>
									</div>
								</div>
								<div class="mess__item">
									<div class="image img-cir img-40">
										<img src="${path}/resources/images/icon/avatar-04.jpg" alt="Diane Myers">
									</div>
									<div class="content">
										<h6>Diane Myers</h6>
										<p>You are now connected on message</p>
										<span class="time">Yesterday</span>
									</div>
								</div>
								<div class="mess__footer">
									<a href="${path}/messenger/goMessenger.do">View all messages</a>
								</div>
							</div>
						</div>
						<div class="noti__item js-item-menu">
							<i class="zmdi zmdi-email"></i> <span class="quantity">1</span>
							<div class="email-dropdown js-dropdown">
								<div class="email__title">
									<p>You have 3 New Emails</p>
								</div>
								<div class="email__item">
									<div class="image img-cir img-40">
										<img src="${path}/resources/images/icon/avatar-06.jpg" alt="Cynthia Harvey">
									</div>
									<div class="content">
										<p>Meeting about new dashboard...</p>
										<span>Cynthia Harvey, 3 min ago</span>
									</div>
								</div>
								<div class="email__item">
									<div class="image img-cir img-40">
										<img src="${path}/resources/images/icon/avatar-05.jpg" alt="Cynthia Harvey">
									</div>
									<div class="content">
										<p>Meeting about new dashboard...</p>
										<span>Cynthia Harvey, Yesterday</span>
									</div>
								</div>
								<div class="email__item">
									<div class="image img-cir img-40">
										<img src="${path}/resources/images/icon/avatar-04.jpg" alt="Cynthia Harvey">
									</div>
									<div class="content">
										<p>Meeting about new dashboard...</p>
										<span>Cynthia Harvey, April 12,,2018</span>
									</div>
								</div>
								<div class="email__footer">
									<a href="#">See all emails</a>
								</div>
							</div>
						</div>
						<div class="noti__item js-item-menu">
							<i class="zmdi zmdi-notifications"></i> <span class="quantity">3</span>
							<div class="notifi-dropdown js-dropdown">
								<div class="notifi__title">
									<p>You have 3 Notifications</p>
								</div>
								<div class="notifi__item">
									<div class="bg-c1 img-cir img-40">
										<i class="zmdi zmdi-email-open"></i>
									</div>
									<div class="content">
										<p>You got a email notification</p>
										<span class="date">April 12, 2018 06:50</span>
									</div>
								</div>
								<div class="notifi__item">
									<div class="bg-c2 img-cir img-40">
										<i class="zmdi zmdi-account-box"></i>
									</div>
									<div class="content">
										<p>Your account has been blocked</p>
										<span class="date">April 12, 2018 06:50</span>
									</div>
								</div>
								<div class="notifi__item">
									<div class="bg-c3 img-cir img-40">
										<i class="zmdi zmdi-file-text"></i>
									</div>
									<div class="content">
										<p>You got a new file</p>
										<span class="date">April 12, 2018 06:50</span>
									</div>
								</div>
								<div class="notifi__footer">
									<a href="#">All notifications</a>
								</div>
							</div>
						</div>
					</div>
					<div class="account-wrap">
						<div class="account-item clearfix js-item-menu">
							<div class="image">

								<img src="${path}/resources/images/ProfileImage/test.png" alt="John Doe">

							</div>
							<div class="content">
								<a class="js-acc-btn" href="#">${member.mName}</a>
							</div>
							<div class="account-dropdown js-dropdown">
								<div class="info clearfix">
									<div class="image">

										<a href="#"> <img src="${path}/resources/images/icon/account_img3.png"

											alt="John Doe">
										</a>
									</div>
									<div class="content">
										<h5 class="name">
											<a href="#">${member.mName}</a>
										</h5>
										<span class="email">${member.mEmail}</span>
									</div>
								</div>
								<div class="account-dropdown__body">
									<div class="account-dropdown__item">

										<a href="${path}/mypage/goMyAbout.do"> <i class="fa fa-user"></i>내 피드

										</a>
									</div>
									<div class="account-dropdown__item">
										<a href="${path}/mypage/goMatching.do"> <i class="fa fa-heart"></i>매칭 목록
										</a>
									</div>
									<div class="account-dropdown__item">
										<a href="${path}/payment/pay.do"> <i class="fa fa-krw"></i>정기권 결제
										</a>
									</div>
									<div class="account-dropdown__item">
										<a href="${path}/customerService/csCenter.do"> <i class="fa fa-info-circle"></i>고객 센터
										</a>
									</div>
									<div class="account-dropdown__item">
										<a href="${path}/setting/updateMemberProfile.do"> <i class="fa fa-cog"></i>설정
										</a>
									</div>
								</div>
								<div class="account-dropdown__footer">
									<a href="${path}/member/memberLogout.do"> <i class="fa fa-power-off"></i>로그아웃
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
</header>
<!--Header End-->