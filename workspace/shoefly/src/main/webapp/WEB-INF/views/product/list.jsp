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
		searchShoes();
		
		//전체선택시 모두 선택, 해제 되도록
		$('#AllBrand').click(function(){
			if($("#AllBrand").prop("checked")) { 
				$("input[name=brand]").prop("checked",true);
			} else {
				$("input[type=checkbox]").prop("checked",false);
			} 
		});
		//브랜드별 체크를 해제했을때 전체체크 해제되도록
		$('#nike').click(function(){
			if(!$('#nike').prop("checked")){
				$('#AllBrand').prop("checked", false);
			}
			allCheck();
		});
		$('#adidas').click(function(){
			if(!$('#adidas').prop("checked")){
				$('#AllBrand').prop("checked", false);
			}
			allCheck();
		});
		$('#newbalance').click(function(){
			if(!$('#newbalance').prop("checked")){
				$('#AllBrand').prop("checked", false);
			}
			allCheck();
		});
		//개별적으로 선택이지만 모두 선택했을 경우 전체에 체크
		function allCheck(){
			if($('#nike').prop("checked") && $('#adidas').prop("checked") && $('#newbalance').prop("checked")){
				$('#AllBrand').prop("checked", true);
			}
		}
	});
		//상품명검색
		function searchShoes(){
			
		}
		//ajax로 조건 선택조회
		
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
		<form id="f">
			<div class="selectCondition">
				<input type="text" name="search" id="search" placeholder="상품명 검색">
				<input type="button" value="검색" id="search_Btn" class="search_Btn">
				<br>
				브랜드&emsp;
				<label for="AllBrand"><input type="checkbox" id="AllBrand">전체</label>&emsp;
				<label for="nike"><input type="checkbox" name="brand" id="nike" >나이키</label>&emsp;
				<label for="adidas"><input type="checkbox" name="brand" id="adidas">아디다스</label>&emsp;
				<label for="newbalance"><input type="checkbox" name="brand" id="newbalance">뉴발란스</label>
				<br>
				사이즈&emsp;
				<label for="240"><input type="checkbox" name="Brand" id="240">240</label>&emsp;
				<label for="250"><input type="checkbox" name="Brand" id="250">250</label>&emsp;
				<label for="260"><input type="checkbox" name="Brand" id="260">260</label>&emsp;
				<label for="270"><input type="checkbox" name="Brand" id="270">270</label>&emsp;
				<label for="280"><input type="checkbox" name="Brand" id="280">280</label>&emsp;
				<label for="290"><input type="checkbox" name="Brand" id="290">290</label>&emsp;
				<br>
				가격 &emsp;
				<input type="text" name="min" id="min" placeholder="최소">&nbsp;&#126;
				<input type="text" name="max" id="max" placeholder="최대">
			</div>
		</form>
		
		<div class="productList">
			
		</div>
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>