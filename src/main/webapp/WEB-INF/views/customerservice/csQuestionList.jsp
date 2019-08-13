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
	.pagination{
		margin : 0 auto;
		display: block;
		margin-left : 35%;
	}
	.table-data2  tr th {
	text-align: center;
	padding : 10px 0;

	}

.tr-shadow {
	height: 60px;
	text-align: center;
	background: #f3f1f1;
	border-bottm : 1px solid #fff;
}
.tr-shadow:hover {
	background : #fff;
}
#table-thead{
	padding : 10px 0;
	
	
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
          <li class="active"><a href="csCenter.jsp" data-toggle="tab"><i class="icon ion-chatboxes"></i>문의하기</a></li>
          
        </ul><!-- .faq-cat-list -->
      
        <div class="row">
        	<div class="col-sm-9">
          
            <!-- Content
            ================================================= -->
            <div class="tab-content faq-content">
            
              <div class="col-md-12" style="height: 400px;">
              
				
              
			
				
				<table id="tbl-board" class="table table-data2">
					<tr id="table-thead">
						<th>제목</th>
						<th>내용</th>
						<th>날짜</th>
						<th>답변</th>
					</tr>
					
					<c:forEach items="${list}" var="q"> 
					<tr id="${q.qNo}" class="tr-shadow">
						<td>${q.qMno}</td>
						<td>${q.qTitle}</td>
						<td>${q.qDate}</td>
						<c:set var="qAnswer" value="${q.qAnswer }" />
						<c:if test="${qAnswer eq null }">
						<td>X</td>
						</c:if>
						<c:if test="${qAnswer ne null }">
						<td>${q.qAnswer } </td>
						</c:if>
					</tr>
					</c:forEach>
				</table>
			
            </div>
				<c:out value="${pageBar}" escapeXml="false"/>
              
              
              

            </div>
          </div>
        	
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
	<script>
		$(function(){
				$("tr[id]").on("click",function(){
					var qNo = $(this).attr("id");
					console.log("qNo="+qNo);
					location.href = "${pageContext.request.contextPath}/customerservice/csQuestionOneView.do?qNo="+qNo;
				});
			});
			</script>
			
	<c:import url="../common/customerservice-mapScript.jsp"/>
    
  </body>
</html>
