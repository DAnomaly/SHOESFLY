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
	<title>리스트</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	$(document).ready(function(){
		selectCondition();
		
		//전체클릭시 모두 선택, 모두해제
		$('#AllBrand').click(function(){
			if($("#AllBrand").prop("checked")) { 
				$(".brand").prop("checked",true);
			} else if(!$("#AllBrand").prop("checked")) {
				$(".brand").prop("checked",false);
			} 
		});
		//개별체크클릭시 전체체크, 전체해지
		$('.brand').click(function(){
			if($("input[name='brand']:checked").length == 3){
	            $("#AllBrand").prop("checked", true);
	        }else{
	            $("#AllBrand").prop("checked", false);
	        }
		});
	});
		//검색버튼으로 선택사항 조회
		//체크박스들은 Command에서 배열 처리
		function selectCondition(){
			$('#search_Btn').click(function(){
				$('#f').attr('action', 'selectCondition.do');
				$('#f').submit();
			});
		}
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
		<div class="selectCondition">
			<form id="f" method="post">
				<input type="text" name="productName" id="productName" placeholder="상품명 검색">
				<input type="button" value="검색" id="search_Btn" class="search_Btn">
				<br>
				브랜드&emsp;
				<label for="AllBrand"><input type="checkbox" id="AllBrand">전체</label>&emsp;
				<label for="nike"><input type="checkbox" name="brand" id="nike" value="Nike" class="brand">나이키</label>&emsp;
				<label for="adidas"><input type="checkbox" name="brand" id="adidas" value="Adidas" class="brand">아디다스</label>&emsp;
				<label for="newbalance"><input type="checkbox" name="brand" id="newbalance" value="New Balance" class="brand">뉴발란스</label>
				<br>
				사이즈&emsp;
				<label for="240"><input type="checkbox" name="size" id="240" value="240">240</label>&emsp;
				<label for="250"><input type="checkbox" name="size" id="250" value="250">250</label>&emsp;
				<label for="260"><input type="checkbox" name="size" id="260" value="260">260</label>&emsp;
				<label for="270"><input type="checkbox" name="size" id="270" value="270">270</label>&emsp;
				<label for="280"><input type="checkbox" name="size" id="280" value="280">280</label>&emsp;
				<label for="290"><input type="checkbox" name="size" id="290" value="290">290</label>&emsp;
				<br>
				가격 &emsp;
				<input type="text" name="minPrice" id="minPrice" placeholder="최소">&nbsp;&#126;
				<input type="text" name="maxPrice" id="maxPrice" placeholder="최대">
			</form>
		</div>
		<br>
		<div class="productList">
			<c:if test="${empty list}">
				준비된 상품이 없습니다.
			</c:if>
			<c:forEach var="product" items="${list}">
				<c:if test="${not empty list}">
					<div class="outbox">
						<div><a href="viewProductPage.do?productNo=${product.productNo}"><img alt="${product.image}" src="/shoefly/resources/archive/product/${product.image}"/></a></div>
						<div class="text">
							<a href="viewProductPage.do?productNo=${product.productNo}"><span class="text">${product.productName}</span></a><br>
							<span class="text">${product.price}</span>원
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>