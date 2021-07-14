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
	<style>
		.product{
			display: flex;
			
		}
	</style>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
		<div class="product">
			<c:if test="${empty product}">
				제품이 없습니다.
			</c:if>
			<c:if test="${not empty product}">
			<div class="imgBox">
				<img alt="${product.image}" src="/shoefly/resources/archive/product/${product.image}"/><br>
			</div>
			<div class="textBox">
				<h3>${product.productName}</h3>
				사이즈: <select name="size">
							<option value="230">230</option>
							<option value="230">240</option>
							<option value="230">250</option>
							<option value="230">260</option>
							<option value="230">270</option>
							<option value="230">280</option>
							<option value="230">290</option>
						</select><br>
				<input type="button" value="즉시구매가" id="buy_btn">
				<input type="button" value="즉시판매가" id="sell_btn"><br>
				상품정보<br>
				브랜드: ${product.brand}<br>
				모델: ${product.productNo}<br>
				
				가격: ${product.price}<br>
			</div>
			</c:if>
		</div>
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>