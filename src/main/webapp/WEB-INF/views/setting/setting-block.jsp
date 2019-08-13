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
        <div class="timeline-cover">

          

        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3">
              
             <c:import url="../common/setting-menubar.jsp">
            	<c:param name="block" value="active"></c:param>
            </c:import>
            
            </div>
            <div class="col-md-8">
            	<div class="edit-profile-container">
				<div class="block-title">
                  <h4 class="grey"><i class="icon ion-backspace-outline"></i></i>차단 목록</h4>
                  <div class="line"></div>
                  <p id="testtest">현재 차단 목록</p>
                  <div class="line"></div>
                </div>
              <!-- Friend List
              ================================================= -->
              <div class="friend-list">
              
                <div class="row" style="overflow:auto; height: 600px;">
                	<c:if test="${empty list}">
                		<p style="text-align: center; padding : 10%; font-size : 20px;">차단한 회원이 존재하지 않습니다.</p>
                	 </c:if>
                	 
            	  <c:forEach items="${list}" var="block">
              	<form action="${pageContext.request.contextPath}/setting/blockDelete.do">
              		
              		<div class="col-md-6 col-sm-6">
                    <div class="friend-card">
                      <img src="http://placehold.it/1030x360" alt="profile-cover" class="img-responsive cover" />
                      <div class="card-info">
                        <img src="http://placehold.it/300x300" alt="user" class="profile-photo-lg" />
                        <div class="friend-info">
                        	<button class="pull-right text-green" type="submit" id="block">차단 해제하기</button>
                          <h5><a href="timeline.html" class="profile-link">${block.blkName}</a></h5>
                          <p>${block.blkEmail}</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <input type="hidden" name="mNo" value="${member.mNo}"/>
                  <input type="hidden" name="blkedMno" value="${block.blkedMno}"/>
              
                  </form>
                </c:forEach>

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
