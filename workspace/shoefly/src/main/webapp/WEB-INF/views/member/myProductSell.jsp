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
		
		<h1>판매내역</h1>	
		
		<div class="sale_list_box">
			<span>판매중</span>
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
				<tbody id="sellRequestList">
					<c:if test="${empty sellRequestList}">
						<tr>
							<td colspan="6">판매중인 상품이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="sellRequestList" items="${sellRequestList}" varStatus="status">
						<c:if test="${status.count > 3}">
						<tr class="tr1 tr_hidden">
						</c:if>
						<c:if test="${status.count <= 3}">
						<tr>	
						</c:if>
							<td><img class="image_box" src="/shoefly/resources/archive/product/${sellRequestList.image}" alt="shoesimage" style="width:80px;"></td>
							<td><a href="/shoefly/product/viewProductPage.do?productNo=${sellRequestList.productNo}">${sellRequestList.productName}</a></td>
							<td>${sellRequestList.price}</td>
							<td>${sellRequestList.productSize}</td>
							<td>${sellRequestList.postdate}</td>
							<td><input type="button" value="삭제" onclick="location.href='deleteSellRequest.do?productSellNo=${sellRequestList.productSellNo}'"></td>
						</tr>	
					</c:forEach>
				</tbody>
				<c:if test="${sellRequestList.size() > 3}">	
				<tfoot>
					<tr class="tr1_a_hidden">
						<td colspan="6"><a href="javascript:show_tr('tr1')" id="more">더보기</a></td>
					</tr>
				</tfoot>
				</c:if>				
		</table>
		</div>
		<div class="sale_list_box">
			<span>판매대기</span>
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
				<tbody id="waitingForSale">
					<c:if test="${empty waitingForSale}">
						<tr>
							<td colspan="5">판매 대기중인 상품이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="waitingForSale" items="${waitingForSale}" varStatus="status">
						<c:if test="status.count > 3">
						<tr class="tr2 tr_hidden">
						</c:if>
						<c:if test="status.count <= 3">
						<tr>	
						</c:if>	
							<td><img class="image_box" src="/shoefly/resources/archive/product/${waitingForSale.image}" alt="shoesimage" style="width:80px;"></td>
							<td><a href="/shoefly/product/viewProductPage.do?productNo=${waitingForSale.productNo}">${waitingForSale.productName}</a></td>
							<td>${waitingForSale.price}</td>
							<td>${waitingForSale.productSize}</td>
							<td>${waitingForSale.postdate}</td>
						</tr>	
					</c:forEach>
				</tbody>	
				<c:if test="${waitingForSale.size() > 3}">		
				<tfoot>
					<tr class="tr2_a_hidden">
						<td colspan="5"><a href="javascript:show_tr('tr2')" id="more">더보기</a></td>
					</tr>
				</tfoot>	
				</c:if>	
		</table>
		</div>
		<div class="sale_list_box">
			<span>판매확정</span>
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
				<tbody id="soldOut">
					<c:if test="${empty soldOut}">
						<tr>
							<td colspan="5">판매가 확정된 상품이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="soldOut" items="${soldOut}" varStatus="status">
						<c:if test="status.count > 3">
						<tr class="tr3 tr_hidden">
						</c:if>
						<c:if test="status.count <= 3">
						<tr>	
						</c:if>	
							<td><img class="image_box" src="/shoefly/resources/archive/product/${soldOut.image}" alt="shoesimage" style="width:80px;"></td>
							<td><a href="/shoefly/product/viewProductPage.do?productNo=${soldOut.productNo}">${soldOut.productName}</a></td>
							<td>${soldOut.price}</td>
							<td>${soldOut.productSize}</td>
							<td>${soldOut.postdate}</td>
						</tr>	
					</c:forEach>
				</tbody>	
				<c:if test="${soldOut.size() > 3}">
				<tfoot>
					<tr class="tr3_a_hidden">
						<td colspan="5"><a href="javascript:show_tr('tr3')" id="more">더보기</a></td>
					</tr>
				</tfoot>
				</c:if>
		</table>
		</div>
		<div class="sale_list_box">
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
				<tbody id="sellCompleted">
					<c:if test="${empty sellCompleted}">
						<tr>
							<td colspan="5">거래된 상품이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="sellCompleted" items="${sellCompleted}" varStatus="status">
						<c:if test="status.count > 3">
						<tr class="tr4 tr_hidden">
						</c:if>
						<c:if test="status.count <= 3">
						<tr>	
						</c:if>	
							<td><img class="image_box" src="/shoefly/resources/archive/product/${sellCompleted.image}" alt="shoesimage" style="width:80px;"></td>
							<td><a href="/shoefly/product/viewProductPage.do?productNo=${sellCompleted.productNo}">${sellCompleted.productName}</a></td>
							<td>${sellCompleted.price}</td>
							<td>${sellCompleted.productSize}</td>
							<td>${sellCompleted.postdate}</td>
						</tr>	
					</c:forEach>
				</tbody>	
				<c:if test="${sellCompleted.size() > 3}">			
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