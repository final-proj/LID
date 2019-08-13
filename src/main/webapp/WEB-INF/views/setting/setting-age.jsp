<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Love in Daily</title>
<!-- stylesheet.jsp -->
<c:import url="../common/stylesheet.jsp" />

<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css"/>

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
            			<c:param name="age" value="active"></c:param>
            			</c:import>
					</div>
					<div class="col-md-8">

						<!-- Age Settings
              ================================================= -->
						<div class="edit-profile-container">
							<div class="block-title">
								<h4 class="grey">
									<i class="icon ion-ios-settings"></i>매칭 설정
								</h4>
								<div class="line"></div>
								<p>매칭하고 싶은 거리와 나이를 설정해주세요.</p>
							</div>
							<form action="${pageContext.request.contextPath}/setting/matchingSetting.do">
							<div class="edit-block">
								<div class="settings-block">
									<div class="row">
										<div class="col-sm-9">
											<div class="switch-description">
												
												<p>
											  <label for="amount2">거리 범위(Km) : </label>
											  <input type="text" id="amount2"  readonly 
											  style="border:0; color:#b39cbb; font-weight:bold; font-size : 16px;">
												</p>
												<input type="hidden" name="msDistance" id="msDistance" />
											 
											<div id="slider-range2"></div>
											</div>
										</div>

									</div>
								</div> <br />
								<div class="line"></div>
								<div class="settings-block">
									<div class="row">
										<div class="col-sm-9">
											<p>
											  <label for="amount">나이 범위 : </label>
											  
											  <input type="text" id="amount"  readonly style="border:0; color:#b39cbb; font-weight:bold; font-size : 16px;">
											  <input type="hidden" name="msMinage" id="min">
											  <input type="hidden" name="msMaxage" id="max">
											</p>
											 
											<div id="slider-range"></div>
										</div>

									</div>
								</div> <br />
								<div class="line"></div>
								<div class="settings-block">
									<div class="row">
										<div class="col-sm-9">
											<div class="switch-description">
												<div>
													<strong>성별</strong>
												</div>
												<div class="col-sm-12">
											<div class="btn-group btn-group-toggle" data-toggle="buttons">
											<label class="btn btn-danger">
												<input type="radio" value="a" name="msGender"/>모두
											</label>
											<label class="btn btn-danger">
												<input type="radio" value="m" name="msGender" />남
											</label>
											<label class="btn btn-danger">
												<input type="radio" value="f" name="msGender"/>여
											</label>
											</div>
											</div>	
											</div>
										</div>
										
									</div>
								</div>
								
								<br />
								<div class="line"></div>
								<br />
								<br />
								<br />
								<button type="submit" class="btn btn-primary">설정 완료</button>
							</div>
							</form>
						</div>
					</div>
					<div class="col-md-2 static">

						
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
	
 
  
	<!-- 나이설정 js -->

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
	  /* 나이 설정  */
	  
    $( "#slider-range" ).slider({
      range: true,
      min: 10,
      max: 70,
      values: [ 10, 50 ],
      slide: function( event, ui ) {
        $( "#amount" ).val( ui.values[ 0 ] + " - " + ui.values[ 1 ] );
        $('#min').val(ui.values[ 0 ]);
        $('#max').val(ui.values[ 1 ]);
        console.log($('#min').val());
        console.log($('#max').val());
      }
    	
    });
    $( "#amount" ).val( $( "#slider-range" ).slider( "values", 0 ) +
      "  -  " + $( "#slider-range" ).slider( "values", 1 ) );
    console.log($('#amount').val());
    
    
    /* ==거리 설정== */
    $( "#slider-range2" ).slider({
    	
        range: "min",
        min: 0,
        max: 200,
        value: 30,
        slide: function( event, ui ) {
          $( "#amount2" ).val( ui.value );
          $('#msDistance').val(ui.value);
          console.log($('#msDistance').val());
          
        }
      });
      
      $( "#amount2" ).val( $( "#slider-range2" ).slider( "value"));
      console.log($('#amount2').val());
    
  } );
  </script>
  <style>
	.ui-widget-header {
	background : #b39cbb;
	
	}
	.ui-slider-horizontal{
	height : 1em;
	}
	.ui-slider .ui-slider-handle {
	height : 1.6em;
	}
	
	</style>
	
</body>
</html>
