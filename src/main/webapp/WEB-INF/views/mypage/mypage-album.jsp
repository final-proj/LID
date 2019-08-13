<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    		<c:param name="album" value="active"></c:param>
    	</c:import>
	
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-7">
				
				
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
				
				
				
              <!-- Photo Album
              ================================================= -->
              <ul class="album-photos">
             
                <c:forEach items="${list}" var="b">
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-1">
                  <c:forEach items="${b.images}" var="bi" varStatus="status">
                  <c:if test="${status.index eq 0}">
                    <img src="${path}/resources/images/FeedImage/${bi.biName}" alt="photo" />
                  </c:if>
                  </c:forEach>
                  </div>
                  </c:forEach>
                  <div class="modal fade photo-1" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="photo" />
                      </div>
                    </div>
                  </div>
                </li>
             	
             
              </ul>
            </div>
            <div class="col-md-2 static">
              <div id="sticky-sidebar">
                <h4 class="grey">Sarah's activity</h4>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Commended on a Photo</p>
                    <p class="text-muted">5 mins ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Has posted a photo</p>
                    <p class="text-muted">an hour ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Liked her friend's post</p>
                    <p class="text-muted">4 hours ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> has shared an album</p>
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
