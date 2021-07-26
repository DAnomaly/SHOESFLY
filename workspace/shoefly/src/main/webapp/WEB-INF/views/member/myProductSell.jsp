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
	<c:if test="${empty loginMember}">
	<script>
		alert('로그인을 해주세요.');
		location.href="loginPage.do";
	</script>
	</c:if>
	<script>
		$(document).ready(function(){
			$('.tr_hidden').hide();
			delete_sale_list();
			fn_return();
		})
		
		function show_tr(className) {
			$('.' + className).show();
			$('.' + className + '_a_hidden').hide();
		}
		
		function delete_sale_list(){
			$('body').on('click', '#delete_btn', function(){
				var productSellNo = $(this).prev().val();
				if(confirm('삭제하시겠습니까?')) {
					location.href = 'deleteSellRequest.do?productSellNo=' + productSellNo;
				}
			})
		}
		
		// 돌아가기
		function fn_return(){
			$('#return_btn').click(function(){
				history.back();
			})
		}
	</script>	
	<style>
		body {
			margin: 0;
			padding: 0;
		}
		section {
			width: 900px;
			margin: 0 auto;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100%;
			line-height: 40px;
		}
		.container {
			width: 800px;
			margin: 0 auto;
		}
		.pageTitle {
			text-align: center;
			margin: 80px 0 50px 0;
		}	
		.table_title {
			margin: 25px 0 8px 5px;
			font-size: 15px;
			font-weight: 700;
		}
		.sale_list_box {
			margin-left: 100px;
		}
		.last_box {
			margin-bottom: 50px;
		}
		table {
			width: 700px;
			height: 80px;
			border-collapse: collapse;
		}
		table thead {
			text-align: center;
		}
		table tbody {
			text-align: center;
		}
		tbody > tr > td {
			border-top: 1px solid black;
			border-bottom: 1px solid black;
		}
		tbody > tr > td > a {
			width: 100%;
			font-size: 15px;
			font-weight: 400;
			color: black;
			text-decoration: none;
			padding: 30px; 
		}
		.btn_primary {
			width: 60px;
			height: 40px;
			border: none;
			box-shadow: 1px 1px 3px 1px #dadce0 inset;
			border-radius: 5px;
			background-color: lightgray; 
			cursor: pointer;
		}
		.btn_primary:hover {
			background-color: darkgray;
		}
		tfoot {
			text-align: center;
		}	
		tfoot > tr > td > a{
			text-decoration: underline double;
			color: black;
		}
		.returnPage_btn {
			width: 85px;
			margin-top: 10px;
			margin-bottom: 50px;
			padding: 15px 0 15px;
			font-size: 15px;
			text-align: center;
			cursor: pointer;
			box-sizing: border-box;
			float: right;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<div class="container">
		<div class="pageTitle">
			<h1>판매내역</h1>	
		</div>			
		<div class="sale_list_box">
			<div class="table_title">
				<span>판매중</span>
			</div>
			<table>
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
							<td><input type="hidden" value="${sellRequestList.productSellNo}" id="productSellNo" name="productSellNo"><input type="button" value="삭제" id="delete_btn" class="btn_primary"></td>
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
			<div class="table_title">
				<span>판매대기</span>
			</div>
			<table>
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
						<c:if test="${status.count > 3}">
						<tr class="tr2 tr_hidden">
						</c:if>
						<c:if test="${status.count <= 3}">
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
			<div class="table_title">
				<span>판매확정</span>
			</div>
			<table>
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
						<c:if test="${status.count > 3}">
						<tr class="tr3 tr_hidden">
						</c:if>
						<c:if test="${status.count <= 3}">
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
		<div class="sale_list_box last_box">
			<div class="table_title">
				<span>거래완료</span>
			</div>
			<table>
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
						<c:if test="${status.count > 3}">
						<tr class="tr4 tr_hidden">
						</c:if>
						<c:if test="${status.count <= 3}">
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
		<div class="return-box">
			<input type="button" value="돌아가기" id="return_btn" class="returnPage_btn btn_primary">
		</div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>