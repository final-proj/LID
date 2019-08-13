<%@page import="java.io.PrintStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!-- Scripts
    ================================================= -->

    <script src="${path}/resources/js/jquery-3.4.1.min.js"></script>
    <script src="${path}/resources/js/bootstrap.min.js"></script>
    <script src="${path}/resources/js/jquery.appear.min.js"></script>
	<script src="${path}/resources/js/jquery.incremental-counter.js"></script>
    <script src="${path}/resources/js/script.js"></script>
    <script src="${path}/resources/js/animsition.min.js"></script>
    <script src="${path}/resources/js/main.js"></script>
    <!-- 결제 cdn -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	
	<script src="${path}/resources/js/cropper_Feed.js"></script>
	<script src="${path}/resources/js/cropper_Profile.js"></script>		
	<script src="${path}/resources/js/cropper.js"></script>
		
		
	
	