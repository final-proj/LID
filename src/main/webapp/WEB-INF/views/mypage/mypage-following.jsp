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
    		<c:param name="friends" value="active"></c:param>
    	</c:import>
        
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-7">

              <!-- Friend List
              ================================================= -->
              <div class="friend-list">
                <div class="row">
                  
                  <c:forEach items="${list}" var="mf">
                  
                  <div class="col-md-6 col-sm-6">
                    <div class="friend-card">
                      <img src="http://placehold.it/1030x360" alt="profile-cover" class="img-responsive cover" />
                      <div class="card-info">
                        <img src="http://placehold.it/300x300" alt="user" class="profile-photo-lg" />
                        <div class="friend-info">
                          <a href="#" class="pull-right text-green">My Friend</a>
                          <h5><a href="${path}/friendpage/goFriendAbout.do?Mno=${mf.mfMyMno}" class="profile-link">${mf.mfMyMno}</a></h5>
                          <p>나와의 거리 17km</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  </c:forEach>
                
                </div>
              </div>
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

    <!-- script  -->
	<c:import url="../common/scripts.jsp" />
    
  </body>
</html>
