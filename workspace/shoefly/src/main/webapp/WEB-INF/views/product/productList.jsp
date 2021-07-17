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
			if($("input[name='brand']:checked").length == 4){
	            $("#AllBrand").prop("checked", true);
	        }else{
	            $("#AllBrand").prop("checked", false);
	        }
		});
		
	});
	
	//검색버튼으로 모든 선택사항 조회
	function selectCondition(){
		$('#search_btn').click(function(){
			$('#f').attr('action', 'selectCondition.do');
			$('#f').submit();
		});
	}
	</script>
	<style>
		*{
			box-sizing: border-box;
		}
		.title, .paging{
			width: 1080px;
			margin: auto;
			text-align: center;
		}
		.productList_container{
			width: 1080px;
			display: flex;
			margin: auto;
		}
		.selectCondition{
			width: 300px;
			float: left;
		}
		table{
			width: 100%;
		}
		td{
			padding: 5px;
		}
		.search_btn{
			width: 100%;
			height: 30px;
		}
		 #productName{
		 	width: 100%;
		 }
		.productList{
			width: 780px;
			float: left;
			overflow: hidden;
		}
		.outbox{
			display: inline-block;
			border: 1px solid black;
			width: 30%;
			height: 300px;
		}
		img{
			width: 100%;
		}
		.input_price{
			width: 46%;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<h3 class="title">
			<a href="listPage.do">SHOP</a>
		</h3>
		<div class="productList_container">
			<div class="selectCondition">
				<form id="f">
				<table>
					<tbody>
						<tr>
							<td colspan="3"><input type="text" name="productName" id="productName" placeholder="상품명 검색"></td>
						</tr>
						<tr>
							<td rowspan="3">브랜드</td>
							<td colspan="2"><label for="AllBrand"><input type="checkbox" id="AllBrand" class="brand">전체브랜드</label></td>
						</tr>
						<tr>
							<td><label for="jordan"><input type="checkbox" name="brand" id="jordan" value="Jordan" class="brand">조던</label></td>
							<td><label for="nike"><input type="checkbox" name="brand" id="nike" value="Nike" class="brand">나이키</label></td>
						</tr>
						<tr>
							<td><label for="adidas"><input type="checkbox" name="brand" id="adidas" value="Adidas" class="brand">아디다스</label></td>
							<td><label for="newbalance"><input type="checkbox" name="brand" id="newbalance" value="New Balance" class="brand">뉴발란스</label></td>
						</tr>
						<tr>
							<td rowspan="3">사이즈</td>
							<td><label for="240"><input type="checkbox" name="size" id="240" value="240">240</label></td>
							<td><label for="250"><input type="checkbox" name="size" id="250" value="250">250</label></td>
						</tr>
						<tr>
							<td><label for="260"><input type="checkbox" name="size" id="260" value="260">260</label></td>
							<td><label for="270"><input type="checkbox" name="size" id="270" value="270">270</label></td>
						</tr>
						<tr>
							<td><label for="280"><input type="checkbox" name="size" id="280" value="280">280</label></td>
							<td><label for="290"><input type="checkbox" name="size" id="290" value="290">290</label></td>
						</tr>
						<tr>
							<td colspan="3">
								<input type="text" name="minPrice" id="minPrice" class="input_price" placeholder="최소">&nbsp;&#126;
								<input type="text" name="maxPrice" id="maxPrice" class="input_price" placeholder="최대">
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="3"><input type="button" value="검색" id="search_btn" class="search_btn"></td>
						</tr>
					</tfoot>
				</table>

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
							<div class="product_img"><a href="viewProductPage.do?productNo=${product.productNo}"><img alt="${product.image}" src="/shoefly/resources/archive/product/${product.image}"/></a></div>
							<div class="product_text">
								<a href="viewProductPage.do?productNo=${product.productNo}"><span class="text">${product.productName}</span></a><br>
								<span class="text">${product.price}</span>원
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
		<div class="paging">${paging}</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>