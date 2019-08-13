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
	#question-container .btn {
		float: right;
		margin-left : 2%;
	}
	</style>
	</head>
<body>
	<!-- header 영역 -->
	<c:import url="../common/header.jsp" />
    
    <!-- Page Title Section
    ================================================= -->
    <div class="page-title-section faq">
      <div class="container">
        <div class="headline">
          <h1 class="title">고객센터</h1>
        </div>
        <div class="page-search">
          <form class="search-form">
            <div class="form-group">
              <label for="search_content" class="screen-reader-text">Search Content!</label>
              <input id="search_content" type="text" class="form-control" value="" placeholder="Search what you want to find...">
            </div>
            <button type="submit" class="btn btn-primary" value=""><i class="icon ion-ios-search-strong"></i></button>
          </form>
        </div>
      </div>
    </div><!-- .page-header faq -->

    <div id="page-contents">
      <div class="container ">

        <!-- FAQ Menu
        ================================================= -->
        <ul class="nav nav-tabs faq-cat-list">
          <li class="active"><a href="#faq_cat_1" data-toggle="tab"><i class="icon ion-ios-information-outline"></i>문의하기</a></li>
         
        </ul><!-- .faq-cat-list -->
      
        <div class="row">
        	<div class="col-sm-9">
          
            <!-- Content
            ================================================= -->
            <div class="tab-content faq-content">
            
              <div class="col-md-12">
              
              
              
			<div id="question-container">
			<form name="boardFrm" action="${pageContext.request.contextPath}/customerservice/csQuestionUpdate.do" method="post" onsubmit="return validate();" enctype="multipart/form-data">
				<h4 class="item-title grey">제목</h4>
				<input type="hidden" class="form-control" name="qNo" value="${question.qNo}"/>
				<input type="text" class="form-control" placeholder="제목" name="qTitle" id="qTitle" value="${question.qTitle}" required>
				<br />
				<h4 class="item-title grey">내용</h4>
			    <textarea class="form-control" name="qContent" rows="10" placeholder="내용" required>${question.qContent}</textarea>
				<br />
				<input type="submit" class="btn btn-primary" value="수정 완료" /> &nbsp;
				<input type="button" class="btn btn-primary" value="삭제" onclick="location.href='${pageContext.request.contextPath}/customerservice/csQuestionDelete.do?qNo=${question.qNo}'"/>
			</form>
			
		</div>
              
              
    		</div>          

            </div>
          </div>
        	<!-- 고객센터 메뉴바 -->
        	<c:import url="../common/customerservice-menubar.jsp" />
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
	<c:import url="../common/customerservice-mapScript.jsp"/>
    
  </body>
</html>
