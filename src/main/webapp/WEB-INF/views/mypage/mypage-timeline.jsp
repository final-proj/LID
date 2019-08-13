<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Love in Daily</title>
<!-- stylesheet.jsp -->
<c:import url="../common/stylesheet.jsp" />
</head>
<body>
	<!-- header 영역 -->
	<c:import url="../common/header.jsp" />

	<div class="container">

		<!-- Timeline
      ================================================= -->
		<div class="timeline">

			<c:import url="mypage-cover.jsp">
				<c:param name="timeline" value="active"></c:param>
			</c:import>

			<div id="page-contents">
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-7">

						<!-- Post Create Box
              ================================================= -->
						<div class="create-post">
							<div class="row">
								<div class="col-md-12">
									<div class="tools">
										<div class="img-wrapper" data-toggle="modal"
											data-backdrop="static" data-target=".feedUpload">
											<button class="btn btn-primary" style="width: 100%;">
												<i class="ion-plus"></i> Feed 작성
											</button>
										</div>
									</div>
									<form name="feedUpload" id="feedUploadForm"
										action="${path}/myPage/FeedUpload.do" method="post"
										enctype="multipart/form-data">
										<div class="modal fade feedUpload" id="imageEditor"
											tabindex="-1" role="dialog" aria-hidden="true">
											<div class="modal-dialog modal-lg">
												<div class="modal-content"
													style="width: 655px; margin: 0 auto; display: block;">
													<!-- 게시물 작성 모달 내용 부분 -->
													<div class="modal-header">
														<h4 class="modal-title">Feed 등록</h4>

														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body">

														<c:import url="../common/image-editor.jsp"></c:import>
													</div>
													<div class="modal-footer">
														<button type="button" id="feedUploadBtn"
															class="btn btn-primary">Feed 등록</button>
														<button type="button" class="btn btn-info"
															data-dismiss="modal">취소</button>
													</div>
												</div>
											</div>
										</div>
									</form>


									<div class="modal fade feedError" id="feedError">
										<div class="modal-dialog modal-sm">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
													<h4 class="modal-title">Feed 등록 에러</h4>
												</div>
												<div class="modal-body" id="feedErrorBody"></div>
												<div class="modal-footer">
													<button type="button" class="btn btn-info"
														data-dismiss="modal">확인</button>
												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal-dialog -->
									</div>
									<!-- /.modal -->
								</div>
							</div>
						</div>
						<!-- Post Create Box End-->

						<!-- Post Content
              ================================================= -->
				<c:forEach items="${list}" var="b"> 
				
						<div class="post-content">
							<!--Post Date-->
							<div class="post-date hidden-xs hidden-sm">
								<h5>${b.bMno}</h5>
								<p class="text-grey">${b.bDate}</p>
							</div>
							<!--Post Date End-->
							
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								
								  <!-- Wrapper for slides -->
								  <div class="carousel-inner" role="listbox">
								  <c:forEach items="${b.images}" var="bi" varStatus="status"> 
								    <c:if test="${status.index eq 0}">
							    	<div class="item active">
								    </c:if><c:if test="${status.index ne 0}">
								    	<div class="item">
								    </c:if> 
								      <img src="${path}/resources/images/FeedImage/${bi.biName}" alt="post-image" class="img-responsive post-image"/>
								    </div>
								    </c:forEach>
								  </div>
								
								  <!-- Controls -->
								  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
								    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								    <span class="sr-only">Previous</span>
								  </a>
								  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
								    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								    <span class="sr-only">Next</span>
								  </a>
								</div>
							
							 
							<%-- <img src="${path}/resources/images/FeedImage/${bi.biName}" alt="post-image"
								class="img-responsive post-image"/>
						     --%>
							
							
							<div class="post-container">
								<img src="http://placehold.it/300x300" alt="user"
									class="profile-photo-md pull-left" />
								<div class="post-detail">
									<div class="user-info">
										<h5>
											<a href="${path}//mypage/goMyAbout.do" class="profile-link">${b.bMno}</a>
											<span class="following">following</span>
										</h5>
										<p class="text-muted">Published a photo about ${b.bDate}</p>
									</div>
									<div class="reaction">
										<a class="btn text-red"><i class="fa fa-heart"></i>
										<a class="btn text-red"><i class="fa  fa-heart-o"></i>
											13</a>
									</div>
									<div class="line-divider"></div>
									<div class="post-text">
										<p>
										${b.bContent} 
										</p>
									</div>
									<div class="line-divider"></div>
									<div class="post-comment">
										<img src="http://placehold.it/300x300" alt=""
											class="profile-photo-sm" />
										<p>
											<a href="timeline.html" class="profile-link">Diana </a><i
												class="em em-laughing"></i> Lorem ipsum dolor sit amet,
											consectetur adipiscing elit, sed do eiusmod tempor incididunt
											ut labore et dolore magna aliqua. Ut enim ad minim veniam,
											quis nostrud
										</p>
									</div>
								</div>
							</div>
						</div>

					</c:forEach>
				



					</div>
					<div class="col-md-2 static">
						<div id="sticky-sidebar">
							<h4 class="grey">Sarah's activity</h4>
							<div class="feed-item">
								<div class="live-activity">
									<p>
										<a href="#" class="profile-link">Sarah</a> Commended on a
										Photo
									</p>
									<p class="text-muted">5 mins ago</p>
								</div>
							</div>
							<div class="feed-item">
								<div class="live-activity">
									<p>
										<a href="#" class="profile-link">Sarah</a> Has posted a photo
									</p>
									<p class="text-muted">an hour ago</p>
								</div>
							</div>
							<div class="feed-item">
								<div class="live-activity">
									<p>
										<a href="#" class="profile-link">Sarah</a> Liked her friend's
										post
									</p>
									<p class="text-muted">4 hours ago</p>
								</div>
							</div>
							<div class="feed-item">
								<div class="live-activity">
									<p>
										<a href="#" class="profile-link">Sarah</a> has shared an album
									</p>
									<p class="text-muted">a day ago</p>
								</div>
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

</body>
</html>
