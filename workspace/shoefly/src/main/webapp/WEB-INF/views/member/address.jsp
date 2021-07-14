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
	<script>
		$(document).ready(function(){
			fn_selectAddressList();
		})
			
		function fn_selectAddressList(){
			$.ajax({
				url: 'selectAddressList.do',
				type: 'post',
				data: 'memberNo=' + ${loginMember.memberNo},
				dataType: 'json',
				success: function(result){
					$('#address_list').empty();
					if(result.exists) {
						$.each(result.list, function(i, address){
							$('<tr>')
							.append( $('<td>').text(address.name) )
							.append( $('<td>').text(address.addr1) )
							.append( $('<td>').text(address.addr2) )
							.append( $('<td>').html('<input type="button" id="update_address_btn" value="수정">') )
							.append( $('<td>').html('<input type="button" id="delete_address_btn" value="삭제">') )
							.appendTo('#address_list');
						})// each문 끝
					} else {
						$('<tr>')
						.append( $('<td colspan="3">등록된 주소가 없습니다.</td>') )
						.appendTo('#address_list');
					} // if문 끝
				}// success 끝
			}); // ajax 끝
		} // 함수 끝
		
	</script>	
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
	
		
		
		<table>
			<thead>
				<tr>
					<td>배송지명</td>
					<td>주소</td>
					<td>상세주소</td>
				</tr>
			</thead>
			<tbody id="address_list">
				
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">
						<a href='insertAddress.do'>주소추가</a>
					</td>
				</tr>
			</tfoot>
		</table>
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>