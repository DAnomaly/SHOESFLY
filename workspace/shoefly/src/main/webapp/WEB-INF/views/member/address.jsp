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
	<title>주소록</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<c:if test="${empty loginMember}">
	<script>
		alert('로그인을 해주세요.');
		location.href="loginPage.do";
	</script>
	</c:if>
	<script>
		$(document).ready(function(){
			fn_selectAddressList();
			fn_updateAddress();
			fn_deleteAddress();
			fn_return();
		})
			
		function fn_selectAddressList(){
			$.ajax({
				url: 'selectAddressList.do',
				type: 'post',
				data: 'memberNo=' + $('#memberNo').val(),
				dataType: 'json',
				success: function(result){
					$('#address_list').empty();
					if(result.exists) {
						$.each(result.list, function(i, address){
							$('<tr>')
							.append( $('<td>').text(address.name) )
							.append( $('<td>').text(address.addr1) )
							.append( $('<td>').text(address.addr2) )
							.append($('<td>').html('<input type="hidden" name="memberAddressNo" id="memberAddressNo" value="' + address.memberAddressNo + '"><input type="button" value="수정" id="update_address_btn" class="btn_primary">'))
							.append( $('<td>').html('<input type="hidden" name="memberAddressNo" id="memberAddressNo" value="' + address.memberAddressNo + '"><input type="button" id="delete_address_btn" value="삭제" class="btn_primary">') )
							.appendTo('#address_list')
						})
					} else {
						$('<tr>')
						.append( $('<td colspan="3">등록된 주소가 없습니다.</td>') )
						.appendTo('#address_list')
					}
				}
			});
		} 
		
		function fn_updateAddress(){
			$('body').on('click', '#update_address_btn', function(){
				var memberAddressNo = $(this).prev().val();
				location.href = 'updateAddressList.do?memberAddressNo=' + memberAddressNo;
			})
		}
		
		function fn_deleteAddress(){
			$('body').on('click', '#delete_address_btn', function(){
				var memberAddressNo = $(this).prev().val();/*  $('#memberAddressNo').val(); */
				if(confirm('선택하신 주소지를 삭제하시겠습니까?')) {
					location.href = 'deleteAddress.do?memberAddressNo=' + memberAddressNo;									
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
			width: 700px;
			margin: 0 auto;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100%;
			line-height: 40px;
		}
		.container {
			width: 500px;
			margin: 0 auto;
		}
		.pageTitle {
			text-align: center;
			margin-left: 100px;
			margin-bottom: 40px; 
		}	
		table {
			width: 600px;
			height: 200px;
			border-collapse: collapse;
		}
		table thead {
			text-align: center;
		}
		table tbody {
			text-align: center;
		}
		tbody > tr > td{
			border-top: 1px solid black;
			border-bottom: 1px solid black;
		}
		.insert_btn {
			color: black;
			font-weight: 400;
			display: inline-block;
			padding: 3px 10px 3px 10px;
			text-decoration: none;
			border: 1px solid none;
			background-color: lightgray;
			border-radius: 5px;
			box-shadow: 1px 1px 3px 1px #dadce0 inset;
		}
		.btn_primary {
			border: none;
			box-shadow: 1px 1px 3px 1px #dadce0 inset;
			border-radius: 5px;
			background-color: lightgray; 
			cursor: pointer;
		}
		.btn_primary:hover {
			background-color: darkgray;
		}
		.body input[type=button] {
			width: 50px;
			height: 30px;
		}
		tfoot {
			text-align: center;
		}
		.returnPage_btn {
			width: 85px;
			margin-top: 20px;
			padding: 15px 0 15px;
			font-size: 15px;
			text-align: center;
			cursor: pointer;
			box-sizing: border-box;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<div class="container">
		<input type="hidden" id="memberNo" value="${loginMember.memberNo}"/>
		<div class="pageTitle">
			<h1>주소록</h1>
		</div>	
		<table>
			<thead>
				<tr>
					<td>배송지명</td>
					<td>주소</td>
					<td>상세주소</td>
					<td colspan="2">
						<a href='insertAddressPage.do' class="insert_btn btn_primary">주소추가</a>
					</td>
				</tr>
			</thead>
			<tbody id="address_list" class="body">				
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6"><input type="button" value="돌아가기" id="return_btn" class="returnPage_btn btn_primary"></td>
				</tr>
			</tfoot>
		</table>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>