<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/manager_header.css">
	<title>SHOEFLY : 관리자</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		function setState(state) {
			if(confirm('거래 상태를 전환하시겠습니까?'))
				location.href='updateProductState.do?no=' + $('#productNo').val() + '&state=' + state;
		}
		function delProduct() {
			if(!confirm('정말로 해당 상품의 모든 정보를 삭제하시겠습니까?\n(복구하실 수 없습니다!!)'))
				return;
			var no = $('#productNo').val();
			$.ajax({
				url: 'deleteProduct.do',
				type: 'post',
				data: 'no=' + no,
				dataType: 'json',
				success: function(data){
					if(data.result){
						location.href='productListPage.do';
					} else {
						alert(data.message);
					}
				}
			})
		}
	</script>
</head>
<body>
	<jsp:include page="../common/manager_header.jsp"></jsp:include>
	<section>
		<div class="right">
			<img alt="${product.image}" src="/shoefly/resources/archive/product/${product.image}"><br>
		</div>
		<h3>
			<span>${product.productNo}</span>
			<input type="button" value="삭제" onclick="delProduct();"/>
		</h3>
		<ul>
			<li>
				<span>상품번호</span>
				<input type="text" id="productNo" value="${product.productNo}" readOnly/>
			</li>
			<li>
				<span>상품이름</span>
				<input type="text" value="${product.productName}" readOnly/>
			</li>
			<li>
				<span>브랜드</span>
				<input type="text" value="${product.brand}" readOnly/>
			</li>
			<li>
				<span>정가</span>
				<input type="text" value="${product.price}" readOnly/>
			</li>
			<li>
				<span>사이즈</span>
				<span>${sizes}</span>
			</li>
			<li>
				<span>상태</span> 
				<c:if test="${product.state == 0}">
				<span style="color:blue;">거래중</span>
				<input type="button" value="정지" onclick="setState(-1);"/>
				</c:if>
				<c:if test="${product.state == -1}">
				<span style="color:red;">정지</span>
				<input type="button" value="거래전환" onclick="setState(0);"/>
				</c:if>
			</li>
		</ul>
	</section>
</body>
</html>