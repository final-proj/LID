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
	height:1300px;
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
	
	
	#PaySelCon{
/* 	border: 1px solid lightgray; */
	background:#fee1e6;
	border-radius:10px;
	width:1100px;
	height: auto;
	display:inline-block;
	padding-top:50px;
	padding-bottom:50px;
	}

	#payResultCon{
	background:#fee1e6;
	border-radius:10px;
	width: 1100px;
	height: auto;
	display:inline-block;
	padding-top:50px;
	padding-bottom:50px;
	text-align:center;
	}
.css3-tab {
  list-style: none;
  margin: 0 auto 40px;
  padding: 38px 0 0 0;
  position: relative;
  width: 90%;
  display:inline-block;
  
}
.css3-tab input[type='radio'] {
  display: none;
}
.css3-tab .css3-tab-nav {
  display: table;
  table-layout: fixed;
  width: 100%;
}
.css3-tab .css3-tab-nav label {
  display: table-cell;
  background-color: #666666;
  color: #FFFFFF;
  padding: 15px;
  text-align: center;
  transition: all .3s ease 0s;
}
.css3-tab .css3-tab-nav label:hover {
  cursor: pointer;
  background: white;
  color: #666666;
  transition: all .3s ease 0s;
}
@media (max-width: 692px) {
  .css3-tab .css3-tab-nav {
    display: block;
    margin: 0 0 20px;
  }
  .css3-tab .css3-tab-nav label {
    display: block;
    box-sizing: border-box;
    width: 100%;
    padding: 20px;
  }
}
.css3-tab .css3-tab-content {
  overflow: hidden;
  padding: 25px;
  display: none;
  background: #FFF;
  clear: left;
  box-sizing: border-box;
}
.css3-tab input[id='tabOne']:checked ~ .css3-tab-nav label[for='tabOne'] {
  background: #ed7183;
  color: white;
  cursor: default;
}
.css3-tab input[id='tabOne']:checked ~ div.tab-one {
  display: block;
  border-top: solid 3px #b6ff00;
}
.css3-tab input[id='tabTwo']:checked ~ .css3-tab-nav label[for='tabTwo'] {
  background: #ed7183;
  color: white;
  cursor: default;
}
.css3-tab input[id='tabTwo']:checked ~ div.tab-two {
  display: block;
  border-top: solid 3px red;
}
.css3-tab input[id='addNew']:checked ~ .css3-tab-nav label[for='addNew'] {
  background: #ed7183;
  color: white;
  cursor: default;
}
.css3-tab input[id='addNew']:checked ~ div.add-new {
  display: block;
  border-top: solid 3px red;
}


	
	
	
	</style>
<body>
	<!-- header 영역 -->
	<c:import url="../common/header.jsp" />
    
    <!-- Page title Section
    ================================================= -->
    <div class="title">
      <img src="${path}/resources/images/pay_back.png"/>
    </div><!-- .page-header faq -->


	
   

        <!-- Payment Menu
        ================================================= -->
       
      	<section id ="payTic" >
     
      		<button id="day1">
      			<div data-aos="zoom-in" id="day1_con">
      			<br>
      				<img src="${path}/resources/images/1dayticket.png"/>
      				<br>
      				<h3>1일</h3>
      				<br>
      				<h2>5,000원</h2>
      				<h4 style="color:#fee1e6">Lorem</h4>
      			</div>
      		</button>
     
      	
      		
      		<button id="day2">
      			<div data-aos="zoom-in" id="day2_con">
      			<br>
      				<img src="${path}/resources/images/1Monthticket.png"/>
      				<br>
      				<h3>1개월</h3>
      				<br>
      				<h2>36,000원</h2>
      				<h4 style="color:#fee1e6">Lorem</h4>
      			</div>
      		</button>
      	
      		
      		
      			<button id="day3">
      			<div data-aos="zoom-in" id="day3_con">
      			<br>
      				<img src="${path}/resources/images/3Monthticket.png"/>
      				<br>
      				<h3>3개월</h3>
      				<br>
      				<h2>91,800원</h2>
      				<h4>(15% 할인 -> 월 30,600원)</h4>
      			</div>
      		</button>
      		
      		
      			
      			<button id="day4">
      			<div data-aos="zoom-in" id="day4_con">
      			<br>
      				<img src="${path}/resources/images/6Monthticket.png"/>
      				<br>
      				<h3>6개월</h3>
      				<br>
      				<h2>135,000원</h2>
      				<h4>(38% 할인 -> 월 22,500원)</h4>
      			</div>
      		</button>
      		
      		
      			
      			<button id="day5">
      			<div data-aos="zoom-in" id="day5_con">
      			<br>
      				<img src="${path}/resources/images/1Yearticket.png"/>
      				<br>
      				<h3>1년</h3>
      				<br>
      				<h2>179,000원</h2>
      				<h4>(59% 할인 -> 월 14,917원)</h4>
      			</div>
      		</button>
      	
      		
      		<br><br>
      		<h3 align="center">정기권 결제 시 광고제거 및 맞팔로우가 되어있지 않은 회원의 피드를 볼 수 있습니다.</h3>
      		<br><br><br>
      		
      		<!-- 결제 정보 컨테이너 -->
      		<div id="pay_con">
      			<span style="float:center; color:#8d6c9f; font-size:30px; font-weight:bold; margin-left:-180px;">선택 정보 : </span>
      		<span class="firTic" style="float:right;  font-size:30px; font-weight:bold; color:#f85a70;position:absolute;"></span>
		
		
      		</div>
      			
      			<br><br>
      			
      			<!-- 결제 결과 컨테이너  -->
      			
<!--       			<hr align="center" style="width:1120px; margin-left:280px;" > -->
      				
      		<div data-aos="zoom-in" id="PaySelCon">
      			<span style="float:center; color:#8d6c9f; font-size:30px; font-weight:bold; margin-left:-40px;">총 주문금액(정기권) : </span>
      		<span class="paySelect" style="float:right;  font-size:30px; font-weight:bold; color:#f85a70;position:absolute;"></span>
      			
      			<br><br>
      			<span style="float:center; color:#8d6c9f; font-size:20px; font-weight:bold; margin-left:-230px;">할인 금액  : </span>
      		<span class="afterDis" style="float:right; font-size:20px; font-weight:bold; color:#f85a70;position:absolute;"></span>
      			
      			<br><br>
      			<span style="float:center; color:#8d6c9f; font-size:30px; font-weight:bold; margin-left:-140px;">결제예정금액  : </span>
      		<span class="payResult" style="float:right;  font-size:30px; font-weight:bold; color:#f85a70;position:absolute;"></span>
      		</div>
      			<br><br><br>
      			
      			<div id="payResultHidden" style="visibility:hidden;"></div>
      			
      			<!-- Ticket 값 넘겨줄 div -->
      			<div id="payOver" style="visibility:hidden;"></div>
      			
      			<div id="ticName" style="visibility:hidden;"></div>
      			
      			<!-- 결제 방법 컨테이너 -->
      			
      		<div  data-aos="zoom-in" id="payResultCon">
      		<span style="float:center;color:#8d6c9f; font-size:30px; font-weight:bold;">결제수단 선택 </span>
      		<br>
      		<div class='css3-tab'>
		<input type='radio' name='a' id='tabOne' tabindex="1">
		<input type='radio' name='a' id='tabTwo' tabindex="2">
		<input type='radio' name='a' id='addNew' tabindex="3">
		<input type='radio' name='a' id='addNew2' tabindex="4">

		<div class="css3-tab-nav">
				<label for='tabOne'>신용카드</label>
				<label for='tabTwo'>휴대폰 결제</label>
				<label for='addNew'>실시간 계좌이체</label>
				<label for='addNew2'>무통장 입금</label>
		</div>

		
      		</div>
      		</div>
      			
      	</section>
 
           

     <!-- footer -->
    <c:import url="../common/footer.jsp" />
    
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>

    <!-- script  -->
	<c:import url="../common/scripts.jsp" />
    
    
    <script>
  

    	
    $(document).ready(function(){
    	if($("#day1").click){
    	$("#day1").click(function(){
    		$(".firTic").text(" 1일 > 5,000원");
    		$(".paySelect").text("5,000원");
    		$(".payResult").text("5,000원");
    		$("#payResultHidden").text("1");
    		$("#payOver").text("1");
    		$("#ticName").text("1일 정기권");
    		$(".afterDis").text("0원");
    		$("#day1_con").css("border", "6px solid #f85a70");
    		$("#day2_con").css("border","0");
        	$("#day3_con").css("border","0");
        	$("#day4_con").css("border","0");
        	$("#day5_con").css("border","0");
    		
    	});
    };
    if($("#day2").click){
    	$("#day2").click(function(){
    		$(".firTic").text(" 1개월 > 36,000원");
    		$(".paySelect").text("36,000원");
    		$(".payResult").text("36,000원");
    		$("#payResultHidden").text("36000");
    		$("#payOver").text("30");
    		$("#ticName").text("1개월 정기권");
    		$(".afterDis").text("0원");
    		$("#day2_con").css("border", "6px solid #f85a70");
    		$("#day1_con").css("border","0");
        	$("#day3_con").css("border","0");
        	$("#day4_con").css("border","0");
        	$("#day5_con").css("border","0");
    	});
    };
    if($("#day3").click){
    	$("#day3").click(function(){
    		$(".firTic").text(" 3개월 > 91,800원");
    		$(".paySelect").text("108,000원");
    		$(".payResult").text("91,800원");
    		$("#payResultHidden").text("91800");
    		$("#payOver").text("90");
    		$("#ticName").text("3개월 정기권");
    		$(".afterDis").text("-16,200원");
    		$("#day3_con").css("border", "6px solid #f85a70");
    		$("#day1_con").css("border","0");
        	$("#day2_con").css("border","0");
        	$("#day4_con").css("border","0");
        	$("#day5_con").css("border","0");
    	});
    };
    if($("#day4").click){
    	$("#day4").click(function(){
    		$(".firTic").text(" 6개월 > 135,000원");
    		$(".paySelect").text("218,000원");
    		$(".payResult").text("135,000원");
    		$("#payResultHidden").text("135000");
    		$("#payOver").text("180");
    		$("#ticName").text("6개월 정기권");
    		$(".afterDis").text("-83,000원");
    		$("#day4_con").css("border", "6px solid #f85a70");
    		$("#day1_con").css("border","0");
        	$("#day3_con").css("border","0");
        	$("#day2_con").css("border","0");
        	$("#day5_con").css("border","0");
    	});
    }
    if($("#day5").click){
    	$("#day5").click(function(){
    		$(".firTic").text(" 1년 > 179,000원");
    		$(".paySelect").text("437,000원");
    		$(".payResult").text("179,000원");
    		$("#payResultHidden").text("179000");
    		$("#payOver").text("365");
    		$("#ticName").text("1년 정기권");
    		$(".afterDis").text("-258,000원");
    		$("#day5_con").css("border", "6px solid #f85a70");
    		$("#day1_con").css("border","0");
        	$("#day3_con").css("border","0");
        	$("#day4_con").css("border","0");
        	$("#day2_con").css("border","0");
    	});
    };
    });
   
    
   
    
    

 
   
    
    </script>
    
     <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
     
     <script>
     AOS.init();
</script>

<!-- 결제 스크립트 -->
<script>
var IMP = window.IMP; // 생략가능
IMP.init('imp97621504'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용


</script>

<script>
// 신용카드, 카카오페이, 등
	if($("#tabOne").click){
		$("#tabOne").click(function(){
			
	 IMP.request_pay({
     pg : 'html5_inicis',
     pay_method : 'card',
     merchant_uid : 'merchant_' + new Date().getTime(),
     name : $('#ticName').text(),
     amount : $('#payResultHidden').text(),
     
 }, function(rsp) {
     if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
         msg += '고유ID : ' + rsp.imp_uid;
         msg += '상점 거래ID : ' + rsp.merchant_uid;
         msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
        
	var pTicket = $("#payOver").text();
        
        location.href='<%=request.getContextPath()%>/payment/payResult.do?pTicket='+ pTicket;
    } else {
         var msg = '결제에 실패하였습니다.';
         msg += '에러내용 : ' + rsp.error_msg;
     }

     alert(msg);
 });
		});
	}
	
	// 휴대폰 결제 스크립트

	if($("#tabTwo").click){
		$("#tabTwo").click(function(){
			
	 IMP.request_pay({
     pg : 'danal',
     pay_method : 'phone',
     merchant_uid : 'merchant_' + new Date().getTime(),
     name : $('#ticName').text(),
     amount : $('#payResultHidden').text(),
     
 }, function(rsp) {
     if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
         msg += '고유ID : ' + rsp.imp_uid;
         msg += '상점 거래ID : ' + rsp.merchant_uid;
         msg += '결제 금액 : ' + rsp.paid_amount;
         
         var pTicket = $("#payOver").text();
         
         location.href='<%=request.getContextPath()%>/payment/payResult.do?pTicket='+ pTicket;
        
    } else {
         var msg = '결제에 실패하였습니다.';
         msg += '에러내용 : ' + rsp.error_msg;
     }

     alert(msg);
 });
		});
	}
	
	// 실시간 계좌이체 (x 테스트용 계정이라 실거래 x)
	if($("#addNew").click){
		$("#addNew").click(function(){
			
	 IMP.request_pay({
     pg : 'danal-tpay',
     pay_method : 'trans',
     merchant_uid : 'merchant_' + new Date().getTime(),
     name : $('#ticName').text(),
     amount : $('#payResultHidden').text(),
     
 }, function(rsp) {
     if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
         msg += '고유ID : ' + rsp.imp_uid;
         msg += '상점 거래ID : ' + rsp.merchant_uid;
         msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
        
        var pTicket = $("#payOver").text();
        
        location.href='<%=request.getContextPath()%>/payment/payResult.do?pTicket='+ pTicket;
    }
     
     else {
         var msg = '결제에 실패하였습니다.';
         msg += '에러내용 : ' + rsp.error_msg;
     }

     alert(msg);
 });
		});
	}
	// 가상 계좌 (x 테스트용 계정이라 실거래 x)
	if($("#addNew2").click){
		$("#addNew2").click(function(){
			
	 IMP.request_pay({
     pg : 'danal-tpay',
     pay_method : 'trans',
     merchant_uid : 'merchant_' + new Date().getTime(),
     name : $('#ticName').text(),
     amount : $('#payResultHidden').text(),
     
 }, function(rsp) {
     if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
         msg += '고유ID : ' + rsp.imp_uid;
         msg += '상점 거래ID : ' + rsp.merchant_uid;
         msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
        
var pTicket = $("#payOver").text();
        
location.href='<%=request.getContextPath()%>/payment/payResult.do?pTicket='+ pTicket;
    } else {
         var msg = '결제에 실패하였습니다.';
         msg += '에러내용 : ' + rsp.error_msg;
     }

     alert(msg);
 });
		});
	}
	
</script>

  </body>
</html>
