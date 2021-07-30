<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/header.css">
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/footer.css">
	<link rel="stylesheet" href="/shoefly/resources/asset/css/product/productView.css">
	<title>상품상세페이지</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="/shoefly/resources/asset/js/product/productView.js" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
	<a href="productListPage.do" class="showList"><i class="fas fa-bars"></i>&nbsp; 상품목록</a>
	<div class="container">
		<form id="f" method="post">
		<input type="hidden" id="loginMember" value="${loginMember}">
		<input type="hidden" id="productNo" value="${productproductNo}">
			<div class="product_container">
				<c:if test="${empty product}">제품이 없습니다.</c:if>
				<c:if test="${not empty product}">
					<div class="imgBox">
						<img alt="${product.image}"src="/shoefly/resources/archive/product/${product.image}" /><br>
					</div>
					<div class="textBox">
						<div class="productName">${product.productName}</div>
						<input type="hidden" name ="productName" id="productName" value="${product.productName}">
						<p>
							사이즈&nbsp;&nbsp;<select name="productSize" id="productSize" class="productSizeList">
								<option value="">:::::::: SIZE ::::::::</option>
								<option value="240">240mm</option>
								<option value="250">250mm</option>
								<option value="260">260mm</option>
								<option value="270">270mm</option>
								<option value="280">280mm</option>
								<option value="290">290mm</option>
							</select><br>
							<br>
							<button id="buyNow" class="btn">
								즉시구매가<br>(사이즈를 선택하세요.)
							</button>
							<button id="sellNow" class="btn">
								즉시판매가<br>(사이즈를 선택하세요.)
							</button><br><br>
						</p>
						<div id="fastDeal" class="fastDeal" style="display: none">
							<a class="faseDealInfo"><i class="far fa-question-circle" id="icon"></i></a>
							<div class="fastDealTitle">빠른거래하기</div>
							<div class="fastBuySell">
								<button id="buyApplication" class="btn">구매신청하기</button>
								<button id="sellApplication" class="btn">판매신청하기</button>
							</div>
						</div>
						<div class="productInfo">
							<table>
								<tr>
									<td>브랜드</td>
									<td>${product.brand}</td>
								</tr>
								<tr>
									<td>일련번호</td>
									<td>${product.productNo}</td>
								</tr>
								<tr>
									<td>발매가</td>
									<td>${product.price}</td>
								</tr>
							</table>
							
						</div>
					</div>
				</c:if>
			</div>
		</form>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>