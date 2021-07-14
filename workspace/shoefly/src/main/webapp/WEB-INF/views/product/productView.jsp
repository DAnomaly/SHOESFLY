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
	<title>상품상세페이지</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
		<div class="product">
			<c:if test="${empty product}">
				제품이 없습니다.
			</c:if>
			<c:if test="${not empty product}">
				제품번호: ${product.productNo}<br>
				제품명: ${product.productName}<br>
				브랜드: ${product.brand}<br>
				가격: ${product.price}<br>
				<input type="button" value="구매하기">
				<input type="button" value="핀매하기">
			</c:if>
		</div>
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>