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
	<link rel="stylesheet" href="/shoefly/resources/asset/css/product/buyComplete.css">
	<title>구매신청서완료</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="/shoefly/resources/asset/js/product/buyComplete.js" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<div class="container">
			<div class="infoBox">
				<i class="fas fa-check"></i><br>
				상품 구매가 완료되었습니다.
			</div>
			<table border="1">
				<tbody>
					<tr class="tableName">
						<td rowspan="5">상품/결제정보</td>
						<td>구입 고객</td>
						<td>${memberId}</td>
					</tr>
					<tr>
						<td>상품명</td>
						<td>${productName}</td>
					</tr>
					<tr>
						<td>사이즈</td>
						<td>${productSize}mm</td>
					</tr>
					<tr>
						<td>구입금액</td>
						<td>${price}원</td>
					</tr>
					<tr>
						<td>배송지</td>
						<td>${memberAddress.name}&nbsp;/&nbsp;${memberAddress.addr1}&nbsp;${memberAddress.addr2}</td>
					</tr>
				</tbody>
			</table>
			<input type="button" value="쇼핑 이어하기" id="listBtn" class="listBtn">
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>