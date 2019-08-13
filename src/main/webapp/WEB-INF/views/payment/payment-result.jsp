<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
	<head>
		<title>LID 정기권 결제</title>
	<!-- stylesheet.jsp -->
	<c:import url="../common/stylesheet.jsp" />
	<!-- div 스타일  -->
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	
	
	
	
	</head>
	
	<style>
	#title{
	width:100%;
	height:300px;
	

	}	
	#payTic{
	text-align:center;
	width:100%;
	height:100%;
	}
	
	#day1_con,#day2_con,#day3_con,#day4_con,#day5_con{
	background:#fee1e6;
	width:200px;
	height:300px;
	border-radius:8px;
	margin-top:100px;
	
	}
	#day1_con:hover,#day2_con:hover,#day3_con:hover,#day4_con:hover,#day5_con:hover{
	border:6px solid #ed7183;
	
	
	}
	
	
	
	#day2_con,#day3_con,#day4_con,#day5_con{
	margin-left:20px;
	
	
	}
	h1,h3,h2{
	text-align:center;
	font-weight:bold;
	color:#956f9a;
	}
	h4{
	text-align:center;
	color:#f85a70;
	font-size:12px;
	font-weight:bold;
	}
	
	#pay_con{
	display:inline;
	}
	
	


	#payResultCon{
	background:#fee1e6;
	border-radius:0 0 10px 10px;
	width: 1100px;
	height: auto;
	display:inline-block;
	padding-top:50px;
	padding-bottom:50px;
	text-align:center;
	}


	#logoBox{
	width:1100px; 
	height:150px;
	background:#ed7183; 
	border-radius:10px 10px 0 0;
	margin-top:200px;
	display:inline-block;
	text-align:center;
	}
	
	
.btn {
	position: relative;
	border: 0;
	padding: 15px 25px;
	display: inline-block;
	text-align: center;
	color: white;
	background:#ed7183;
}
.btn:active {
	top: 4px;	
}

/* color classes for .btn */


.btn.red {box-shadow:0px 4px 0px #E04342;}
.btn.red:active {box-shadow: 0 0 #ff4c4b; background-color: #ed7183;}

.rounded {
  border-radius: 10px;
}


	
	</style>
<body>
	<!-- header 영역 -->
	<c:import url="../common/header.jsp" />
    
    <!-- Page title Section
    ================================================= -->
  


	
   

        <!-- Payment Menu
        ================================================= -->
       
      	<section id ="payTic" >
     
      			
      			<!-- 결제 방법 컨테이너 -->
      			<div id="logoBox" >
      		<img src="${path}/resources/images/LID_logo.png" style="float:center; width:500px;height:150px;">
      		</div>
      		<div  data-aos="zoom-in" id="payResultCon">
      		
      		<br>
      		<span style="float:center;color:#8d6c9f; font-size:30px; font-weight:bold;">결제가 정상적으로 완료되었습니다. </span>
      		<br>
      	
      		</div>
      			<br><br>
      			<a href="${path}" class="btn red rounded">메인으로</a>
      	</section>
 
           

     <!-- footer -->
    <c:import url="../common/footer.jsp" />
    
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>

    <!-- script  -->
	<c:import url="../common/scripts.jsp" />
    
  
    
     <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
 

     
     <script>
     AOS.init();
</script>

  </body>
  
</html>
