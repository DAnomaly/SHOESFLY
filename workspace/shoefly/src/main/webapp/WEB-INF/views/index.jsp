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
			fn_mostPopular();
		});
		
		
		// mostPopular 
		function fn_mostPopular() {
			$.ajax({
				url: 'selectMostPopular.do',
				type: 'POST',
				dataType: 'json',
				success: function(resultMap) {
					$.each(resultMap.mostProduct, function(i, product) {
						$('<a href="product/viewProductPage.do?productNo=' + product.productNo + '">')
						.html( '<img alt="' + product.image + '" src="/shoefly/resources/archive/product/' + product.image + '" style="width: 250px;">' )
						.appendTo('.mostProduct_img');
						$('<a href="product/viewProductPage.do?productNo=' + product.productNo + '">').html('<span class="text">').text(product.productName)
						.appendTo('.mostProduct_text');
						$('<span class="text">').html(product.price + '원')
						.appendTo('.mostProduct_text');
					});
				}
			});
		}
		
		// recommand
		function fn_recommand() {
			$.ajax({
				url: 'selectRecommand.do',
				type: 'POST',
				dataType: 'json',
				success: function(resultMap) {
					$.each(resultMap.recommandProduct, function(i, product) {
						$('<a href="product/viewProductPage.do?productNo=' + product.productNo + '">')
						.html( '<img alt="' + product.image + '" src="/shoefly/resources/archive/product/' + product.image + '" style="width: 250px;">' )
						.appendTo('.recommandProduct_img');
						$('<a href="product/viewProductPage.do?productNo=' + product.productNo + '">').html('<span class="text">').text(product.productName)
						.appendTo('.recommandProduct_text');
						$('<span class="text">').html(product.price + '원')
						.appendTo('.recommandProduct_text');
					});
				}
			});
		}
		
		
		
		/*
						$('<a class="item_inner href="product/viewProductPage.do?productNo=' + product.productNo + '">')
						.appendTo('.product_item');
						$('<img alt="' + product.image + '" src="/shoefly/resources/archive/product/' + product.image + '" style="width: 300px;">' )
						.appendTo('.product');
						$('<p class="product_name">').text(product.productName)
						.appendTo('.info_box');
						$('<span class="text">').html(product.price + '원')
						.appendTo('.price');
		
		*/
	
		
	</script>
	
	<style>
	
		
	</style>
</head>
<body>
	<jsp:include page="./common/header.jsp"/>
	<section>
		<div class="index_container">
			<div class="mostPopular_box">
				<h1>Most Popular</h1>
				인기 상품<br>
				<div class="productList">
					<div class="outbox">
						<div class="mostProduct_img">
						</div>
						<div class="mostProduct_text">
						</div>
					</div>
				</div>
			</div>
			<div class="recomand_box">
				<h1>Recomanded Product</h1>
				추천 상품<br>
				<div class="productList">
					<div class="outbox">
						<div class="recommandProduct_img">
						</div>
						<div class="recommandProduct_text">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="./common/footer.jsp"/>
</body>
</html>