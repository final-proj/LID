
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
	.faq-cat-list.nav-tabs>li:nth-child(1)>a {
	background: #fb9caa;
	}
	.faq-cat-list.nav-tabs>li:nth-child(2)>a {
	background: #f9697e;
	}
	.faq-cat-list.nav-tabs>li:nth-child(3)>a {
		background: #ff8c9d;
	}
	#map {
	height: 500px;
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
        <ul class="nav nav-tabs faq-cat-list" >
          <li class="active"><a href="#faq_cat_1" data-toggle="tab"><i class="icon ion-chatboxes"></i>문의하기</a></li>
          <li><a href="#faq_cat_2" data-toggle="tab"><i class="icon ion-ios-person"></i>FAQ</a></li>
          <li><a href="#faq_cat_3" data-toggle="tab"><i class="icon ion-eye-disabled"></i>공지사항</a></li>
        </ul><!-- .faq-cat-list -->
      
        <div class="row">
        	<div class="col-sm-9">
          
            <!-- Content
            ================================================= -->
            <div class="tab-content faq-content">
            
              <!-- 문의하기 작성! -->
              <div class="tab-pane active" id="faq_cat_1">
                <div class="col-md-12 col-sm-12">
                  <div class="faq-headline">
                	<h3 class="item-title grey"><i class="icon ion-chatboxes"></i>문의하기</h3>
               	 </div>
                  <form class="contact-form" action="${pageContext.request.contextPath}/customerservice/contact.do" method="post">
                    <div class="form-group">
						<input id="contact-email" type="text" name="qTitle" class="form-control" placeholder="제목" required="required" data-error="Email is required.">
                    </div>
                    <div class="form-group">
                      
                      <input id="contact" type="text" name="phone" class="form-control" placeholder="연락처를 남겨주세요." required="required" data-error="Phone is required."
                      		style="width : 50% !important; float :left; margin-right : 10%;">
                      		<input type="hidden" name="qCategory" value="testCategory">
                      		<input type="hidden" name="mNo" value="1">
                    	<select name="select" id="contact-phone" style="width:30%; border-radius: 5px; border: 1px solid #f1f2f2; padding: 6px 12px;">
                    		<option value="1">결제 문의</option>
                    		<option value="2">이용 문의</option>
                    		<option value="3">환불 문의</option>
                    	</select> 
                    </div> <br />
                    <div class="form-group">
                      <textarea id="form-message" name="qContent" class="form-control" placeholder="내용을 작성해주세요." rows="7" required="required" data-error="Please,leave us a message."></textarea>
                    </div>
                  <button style="float:right;" class="btn btn-primary" type="submit">작성하기</button>
                  </form>
                </div>
                
                
              </div><!-- #faq_cat_1 -->
              
              <!-- FAQ Category Content : Account -->
              <div class="tab-pane" id="faq_cat_2">
                <div class="faq-headline">
                	<h3 class="item-title grey"><i class="icon ion-ios-person"></i>FAQ</h3>
                	<p>자주 묻는 질문 리스트 입니다.</p> <br />
                </div>
                <div class="panel-group" id="faqAccordion-2" style="overflow: auto; height: 500px;">
                
                  <c:forEach items="${list}" var = "f" varStatus="status">
                  <div class="panel panel-default" >
                    <div class="panel-heading accordion-toggle question-toggle collapsed" data-toggle="collapse" data-parent="#faqAccordion-2" data-target="#question${status.index}">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">
                      	 	Q: ${f.fTitle }</a></h4>
                      </div>
                    <div id="question${status.index}" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                    
                        <p>${f.fContent }</p>
                      </div>
                    </div>
                     
                  </div>
                        </c:forEach>
                </div><!--.panel-group-->
              </div><!-- #faq_cat_2 -->
              
              <!-- 공지사항 : Privacy -->
              <div class="tab-pane" id="faq_cat_3">
                <div class="faq-headline">
                	<h3 class="item-title grey"><i class="icon ion-eye-disabled"></i>공지사항</h3>
                	총 ${totalContents }건의 공지사항이 있습니다.
                </div>
                <div class="panel-group" id="faqAccordion-3">
                    	<c:forEach items="${list2}" var="n" varStatus="status2">
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle question-toggle collapsed" data-toggle="collapse" data-parent="#faqAccordion-3" data-target="#notice${status2.index}">
                    		
                    	<span class="label label-primary">${n.nNo},${n.nDate}</span>
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">${n.nTitle}</a></h4>
                    </div>
                    <div id="notice${status2.index}" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>${n.nContent}</p>
                      </div>
                    </div>
                  </div><!-- .panel --> 
                   </c:forEach>
                   
            	<c:out value="${pageBar}" escapeXml="false"/>     
                </div><!--.panel-group-->
              </div><!-- #faq_cat_2 -->
              
			
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
	
	<c:import url="../common/customerservice-mapScript.jsp"/>
    
  </body>
</html>
