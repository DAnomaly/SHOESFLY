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
	<title>주소 수정</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			fn_updateAddress();
		})
		
		function fn_updateAddress() {
			$('#update_address_btn').click(function(){
				if($('#name').val() == '') {
					alert('배송지를 입력해주세요.');
					return false;
				} else if('${memberAddress.name}' == $('#name').val() && '${memberAddress.addr1}' == $('#addr1').val() && '${memberAddress.addr2}' == $('#addr2').val()) {
					alert('변경할 내용이 없습니다.');
					return false;
				}
			
				$('#f').attr('action', 'updateAddress.do');
				$('#f').submit();
				
			})
		}
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
	
		<form id="f" method="post">		
			<input type="hidden" id="memberAddressNo" name="memberAddressNo" value="${memberAddress.memberAddressNo}">
			<div class="addr_info">
				배송지<br>
				<input type="text" id="name" name="name" value="${memberAddress.name}" placeholder="배송지명">
			</div>
			<div class="addr_info">
				주소<br>
				<input type="text" id="addr1" name="addr1" value="${memberAddress.addr1}">
				<input type="button" id="addr_search_btn" value="주소찾기"><br><br>
				<input type="text" id="addr2" name="addr2" value="${memberAddress.addr2}">
			</div>
			<input type="button" id="update_address_btn" value="수정">
		</form>
	
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>