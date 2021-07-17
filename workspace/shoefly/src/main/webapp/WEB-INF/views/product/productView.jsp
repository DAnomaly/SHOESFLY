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
		$(document).ready(function(){
			$('#size').on('change', function(){
				
				//사이즈가 선택되면
				if(size != ""){
					var productSize = $("#productSize option:selected").val();
					var productName = $('#productName').val();

					$.ajax({
						url:'selectPriceBySize.do',
						type: 'post',
						data : 'productSize=' + productSize + '&productName=' + productName,
						dataType: 'json',
						success : function(resultMap){
							alert('성공');
							if(resultMap.buyPrice == null){
								$('#priceView_1').val("판매");
							else{
								$('#priceView_1').val("즉시구매가" + resultMap.buyPrice);
								$('#priceView_2').val("즉시판매가" + resultMap.sellPrice);
							}
						},
						error : function(){
							alert('실패');
						}
					});
				}
			});
			
		});
	</script>
	<style>
		.product{
			display: flex;
			
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
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
				<input type="hidden" name="productNo" id="productName" value="${product.productName}">
				<h3>${product.productName}</h3>
				사이즈: <select name="productSize" id="size">
							<option value="">::::: 선택 :::::</option>
							<option value="230">230</option>
							<option value="240">240</option>
							<option value="250">250</option>
							<option value="260">260</option>
							<option value="270">270</option>
							<option value="280">280</option>
							<option value="290">290</option>
						</select><br><br>
				<button id="sell_btn" id="buy_btn">즉시구매가<br><span id="priceView_1">(사이즈를 선택하세요.)</span></button>
				<button id="buy_btn" id="sell_btn">즉시판매가<br><span id="priceView_2">(사이즈를 선택하세요.)</span></button><br><br>
				상품정보<br><br>
				브랜드: ${product.brand}<br>
				모델: ${product.productNo}<br>
				가격: ${product.price}원<br>
			</div>
			</c:if>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>