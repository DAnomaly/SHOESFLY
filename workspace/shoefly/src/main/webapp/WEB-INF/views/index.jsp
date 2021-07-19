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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			fn_recommand();
		});
		
		function fn_recommand() {
			$.ajax({
				url: 'selectRecommand.do',
				type: 'POST',
				dataType: 'json',
				success: function(resultMap) {
					$.each(resultMap.recommandProduct, function(i, product) {
						$('<a href="product/viewProductPage.do?productNo=' + product.productNo + '">')
						.html( '<img alt="' + product.image + '" src="/shoefly/resources/archive/product/' + product.image + '" style="width: 300px;">' )
						.appendTo('.product_img');
						$('<a href="product/viewProductPage.do?productNo=' + product.productNo + '">').html('<span class="text">').text(product.productName)
						.appendTo('.product_text');
						$('<span class="text">').html(product.price + '원')
						.appendTo('.product_text');
					});
				}
			});
			
		}
	
		
	</script>
	
	<style>
	
		
	</style>
</head>
<body>
	<jsp:include page="./common/header.jsp"/>
	<section>
		<h1>Most Popular</h1>
		인기 상품
	
	
		<h1>Recomanded Product</h1>
		추천 상품<br>
		<div class="outbox">
			<div class="product_img">
			</div>
			<div class="product_text">
				
			</div>
		</div>
			
	</section>
	<jsp:include page="./common/footer.jsp"/>
</body>
</html>