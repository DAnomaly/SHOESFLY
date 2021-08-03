<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/header.css">
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/footer.css">
	<link rel="stylesheet" href="/shoefly/resources/asset/css/product/productList.css">
	<title>상품목록</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="/shoefly/resources/asset/js/product/productList.js" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<div class="productList_container">
			<div class="selectCondition">
				<form id="f">
				<div class="conditionTitle">상품명</div>	
				<div class="conditionListBox">
					<input type="text" name="productName" id="productName" class="productName" placeholder="상품명">
				</div>
				
				<div class="conditionListBox">
					<div class="conditionTitle">브랜드</div>
					<table>
						<tr>
							<td>
								<input type="checkbox" id="AllBrand" class="brand">
								<label for="AllBrand"> 전체</label>
							</td>
						</tr>
						<tr>
							<td>
								<input type="checkbox" name="brand" id="jordan" value="Jordan" class="brand">
								<label for="jordan"> Jordan</label>&emsp;&emsp;
							</td>
							<td>
								<input type="checkbox" name="brand" id="nike" value="Nike" class="brand">
								<label for="nike"> Nike</label>
							</td>
						</tr>
						<tr>
							<td>
								<input type="checkbox" name="brand" id="adidas" value="Adidas" class="brand">
								<label for="adidas"> Adidas</label>
							</td>
							<td>
								<input type="checkbox" name="brand" id="newbalance" value="New Balance" class="brand">
					<label for="newbalance"> New Balance</label>
							</td>
						</tr>
					</table>
					
				</div>
				
				<div class="conditionListBox">		
					<div class="conditionTitle">사이즈</div>
					<table>
						<tr>
							<td>
								<input type="checkbox" name="size" id="240" value="240">
								<label for="240"> 240</label>					
								<input type="checkbox" name="size" id="250" value="250">
								<label for="250"> 250</label>					
								<input type="checkbox" name="size" id="260" value="260">
								<label for="260"> 260</label>
							</td>
						</tr>
						<tr>
							<td>
								<input type="checkbox" name="size" id="270" value="270">
								<label for="270"> 270</label>
								<input type="checkbox" name="size" id="280" value="280">
								<label for="280"> 280</label>
								<input type="checkbox" name="size" id="290" value="290">
								<label for="290"> 290</label>
							</td>
						</tr>
					</table>
				</div>
				
				<div class="conditionListBox">	
					<div class="conditionTitle">가격범위</div>		
					<input type="text" name="minPrice" id="minPrice" class="input_price" placeholder="최소">&nbsp;&#126;
					<input type="text" name="maxPrice" id="maxPrice" class="input_price" placeholder="최대">
				</div>
							
				<input type="button" value="LOOK UP" id="search_btn" class="search_btn">
			
				</form>
			</div>
			<br>
			<div class="productList_box">
				<div class="productList">
					<c:if test="${empty list}">
						<h3 class="empty_text">준비된 상품이 없습니다.</h3>
					</c:if>
					<c:forEach var="product" items="${list}">
						<c:if test="${not empty list}">
							<div class="product_item">
								<a class="item_inner" href="viewProductPage.do?productNo=${product.productNo}&&productName=${product.productName}">
									<div class="product" style="background-color: #FFD3B0;">
										<img class="product_img" alt="${product.image}" src="/shoefly/resources/archive/product/${product.image}">
									</div>
									<div class="info_box">
										<p class="product_name">${product.productName}</p>
										<p class="product_price">발매가${product.price}원</p>
									</div>
								</a>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<c:if test="${not empty list}">
					<div class="paging">${paging}</div>
				</c:if>
			</div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>