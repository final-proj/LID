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
	</head>
<body>
	<!-- header 영역 -->
	<c:import url="../common/header.jsp" />

    <div class="container">

      <!-- Timeline
      ================================================= -->
      <div class="timeline">
    	
    	<c:import url="friendpage-cover.jsp">
    		<c:param name="album" value="active"></c:param>
    		<c:param name="Mno" value="${Mno}"></c:param>
    	</c:import>
	
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-7">

              <!-- Photo Album
              ================================================= -->
              <ul class="album-photos">
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-1">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-1" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="photo" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
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
