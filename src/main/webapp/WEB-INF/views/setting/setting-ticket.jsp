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
</head>

<style>
.table-data2 thead  tr th {
	padding-left: 60px !important;
}

.tr-shadow {
	height: 60px;
	text-align: center;
	background: #f3f1f1;
	
}

.tr-shadow>td {
	padding : 0!important;
}
</style>
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
							<c:param name="ticket" value="active"></c:param>
						</c:import>

					</div>
					<div class="col-md-8">

						<!-- Edit Interests
              ================================================= -->
						<div class="edit-profile-container">
							<div class="block-title">
								<h4 class="grey">
									<i class="icon ion-social-usd"></i>정기권 확인하기
								</h4>
								<div class="line"></div>
								<p>정기권 구입 내역</p>
								<div class="line"></div>
							</div>
						<div class="table"   style="overflow:auto; height : 500px;">
							<table class="table table-data2">
								<thead style="text-align: center;">
									<tr>
										<th>종류</th>
										<th>가격</th>
										<th>구입일</th>
										<th>만료일</th>
										<th>사용 여부</th>
									</tr>
								</thead>
								
								<tbody>
									<c:forEach items="${list}" var="pay">
										<tr class="tr-shadow">
											<td>
												<c:if test="${pay.pTicket eq 1}"><br />1일 정기권</c:if>
												<c:if test="${pay.pTicket eq 2}"><br />1개월 정기권</c:if>
												<c:if test="${pay.pTicket eq 3}"><br />3개월 정기권</c:if>
												<c:if test="${pay.pTicket eq 4}"><br />6개월 정기권</c:if>
												<c:if test="${pay.pTicket eq 5}"><br />1년 정기권</c:if>
											</td>

											<td class="desc"><c:if test="${pay.pTicket eq 1}">
											5,000원
											</c:if> <c:if test="${pay.pTicket eq 2}">
											36,000원
											</c:if> <c:if test="${pay.pTicket eq 3}">
											91,800원
											</c:if> <c:if test="${pay.pTicket eq 4}">
											135,000원
											</c:if> <c:if test="${pay.pTicket eq 5}">
											179,000원
											</c:if></td>


											<td>${pay.pDate}</td>
											<td>${pay.pODate }</td>

											<td><c:if test="${pay.pStatus > 0 }">
													<span class="status--process">사용중 </span>
												</c:if> <c:if test="${pay.pStatus <= 0  }">
													<span class="status--denied">사용지남 </span>
												</c:if></td>
										</tr>
										<tr class="spacer"></tr>
										<c:set var="statusBtn" value="0" />
										<c:if test="${pay.pStatus > 0 }">
											<c:set var="statusBtn" value="1" />
										</c:if>

									</c:forEach>
									<tr class="spacer"></tr>
								</tbody>
							</table>
							</div>


							<br />
							<c:if test="${statusBtn ne 1}" >
								<div class="form-group col-sm-12" style="text-align: right;">
	
									<a href="${pageContext.request.contextPath}/payment/pay.do"><button
											class="btn btn-primary">정기권 구매하러 가기</button></a>
								</div>
							</c:if>

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
