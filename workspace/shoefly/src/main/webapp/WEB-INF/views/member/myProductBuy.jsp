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
	<title>마이페이지 : 구매내역</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			$('.tr_hidden').hide();
		})
		
		function show_tr(className) {
			$('.' + className).show();
			$('.' + className + '_a_hidden').hide();
		}
		
	</script>	
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
	
		<h1>구매내역</h1>	
	
		<div class="buying_list_box">
			<span>구매중</span>
			<table border="1">
				<thead>
					<tr>
						<td></td>
						<td>제품명</td>
						<td>가격</td>
						<td>사이즈</td>
						<td>구매대기일</td>
					</tr>
				</thead>
				<tbody id="buyRequestList">
					<c:if test="${empty buyRequestList}">
						<tr>
							<td colspan="6">구매중인 상품이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="buyRequestList" items="${buyRequestList}" varStatus="status">
						<c:if test="${status.count > 3}">
						<tr class="tr1 tr_hidden">
						</c:if>
						<c:if test="${status.count <= 3}">
						<tr>	
						</c:if>
							<td><img class="image_box" src="/shoefly/resources/archive/product/${buyRequestList.image}" alt="shoesimage" style="width:80px;"></td>
							<td><a href="/shoefly/product/viewProductPage.do?productNo=${buyRequestList.productNo}">${buyRequestList.productName}</a></td>
							<td>${buyRequestList.price}</td>
							<td>${buyRequestList.productSize}</td>
							<td>${buyRequestList.postdate}</td>
							<td><input type="button" value="삭제" onclick="location.href='deleteBuyRequest.do?productBuyNo=${buyRequestList.productBuyNo}'"></td>
						</tr>	
					</c:forEach>
				</tbody>
				<c:if test="${buyRequestList.size() > 3}">	
				<tfoot>
					<tr class="tr1_a_hidden">
						<td colspan="6"><a href="javascript:show_tr('tr1')" id="more">더보기</a></td>
					</tr>
				</tfoot>
				</c:if>				
		</table>
		</div>
		<div class="buying_list_box">
			<span>구매확정</span>
			<table border="1">
				<thead>
					<tr>
						<td></td>
						<td>제품명</td>
						<td>가격</td>
						<td>사이즈</td>
						<td>확정일</td>
					</tr>
				</thead>
				<tbody id="buyingList">
					<c:if test="${empty buyingList}">
						<tr>
							<td colspan="5">구매가 확정된 상품이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="buyingList" items="${buyingList}" varStatus="status">
						<c:if test="status.count > 3">
						<tr class="tr2 tr_hidden">
						</c:if>
						<c:if test="status.count <= 3">
						<tr>	
						</c:if>	
							<td><img class="image_box" src="/shoefly/resources/archive/product/${buyingList.image}" alt="shoesimage" style="width:80px;"></td>
							<td><a href="/shoefly/product/viewProductPage.do?productNo=${buyingList.productNo}">${buyingList.productName}</a></td>
							<td>${buyingList.price}</td>
							<td>${buyingList.productSize}</td>
							<td>${buyingList.postdate}</td>
						</tr>	
					</c:forEach>
				</tbody>	
				<c:if test="${buyingList.size() > 3}">		
				<tfoot>
					<tr class="tr2_a_hidden">
						<td colspan="5"><a href="javascript:show_tr('tr2')" id="more">더보기</a></td>
					</tr>
				</tfoot>	
				</c:if>	
		</table>
		</div>
		<div class="buying_list_box">
			<span>배송중</span>
			<table border="1">
				<thead>
					<tr>
						<td></td>
						<td>제품명</td>
						<td>가격</td>
						<td>사이즈</td>
						<td>확정일</td>
					</tr>
				</thead>
				<tbody id="ShippingList">
					<c:if test="${empty ShippingList}">
						<tr>
							<td colspan="5">구매내역이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="ShippingList" items="${ShippingList}" varStatus="status">
						<c:if test="status.count > 3">
						<tr class="tr3 tr_hidden">
						</c:if>
						<c:if test="status.count <= 3">
						<tr>	
						</c:if>	
							<td><img class="image_box" src="/shoefly/resources/archive/product/${ShippingList.image}" alt="shoesimage" style="width:80px;"></td>
							<td><a href="/shoefly/product/viewProductPage.do?productNo=${ShippingList.productNo}">${ShippingList.productName}</a></td>
							<td>${ShippingList.price}</td>
							<td>${ShippingList.productSize}</td>
							<td>${ShippingList.postdate}</td>
						</tr>	
					</c:forEach>
				</tbody>	
				<c:if test="${ShippingList.size() > 3}">
				<tfoot>
					<tr class="tr3_a_hidden">
						<td colspan="5"><a href="javascript:show_tr('tr3')" id="more">더보기</a></td>
					</tr>
				</tfoot>
				</c:if>
		</table>
		</div>
		<div class="buying_list_box">
			<span>거래완료</span>
			<table border="1">
				<thead>
					<tr>
						<td></td>
						<td>제품명</td>
						<td>가격</td>
						<td>사이즈</td>
						<td>확정일</td>
					</tr>
				</thead>
				<tbody id="buyCompleted">
					<c:if test="${empty buyCompleted}">
						<tr>
							<td colspan="5">거래된 상품이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="buyCompleted" items="${buyCompleted}" varStatus="status">
						<c:if test="status.count > 3">
						<tr class="tr4 tr_hidden">
						</c:if>
						<c:if test="status.count <= 3">
						<tr>	
						</c:if>	
							<td><img class="image_box" src="/shoefly/resources/archive/product/${buyCompleted.image}" alt="shoesimage" style="width:80px;"></td>
							<td><a href="/shoefly/product/viewProductPage.do?productNo=${buyCompleted.productNo}">${buyCompleted.productName}</a></td>
							<td>${buyCompleted.price}</td>
							<td>${buyCompleted.productSize}</td>
							<td>${buyCompleted.postdate}</td>
						</tr>	
					</c:forEach>
				</tbody>	
				<c:if test="${buyCompleted.size() > 3}">			
				<tfoot>
					<tr class="tr4_a_hidden">
						<td colspan="5"><a href="javascript:show_tr('tr4')" id="more">더보기</a></td>
					</tr>
				</tfoot>
				</c:if>
		</table>
		</div>
	
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>