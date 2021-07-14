<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/header.css">
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/footer.css">
	<title>제목</title>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
	
		<form id="f" method="post">		
			<div class="addr_info">
				배송지
				<input type="radio" id="home" name="home" value="집"><label for="home">집</label>
				<input type="radio" id="company" name="company" value="회사"><label for="company">회사</label> 
			</div>
			<div class="addr_info">
				<input type="text" id="addr1" name="addr1">
				<input type="button" id="addr_search_btn" value="주소찾기"><br><br>
				<input type="text" id="addr2" name="addr2"> 				
			</div>
			<input type="button" id="insert_addr_btn" value="추가">
		</form>
	
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>