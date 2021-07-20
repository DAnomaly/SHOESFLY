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
		var t0_page = 1;
		var t1_page = 1;
		var t2_page = 1;
		var t3_page = 1;
		var t_page = 1;
		var order = 'POSTDATE';
		var isDesc = 'DESC';
		$(document).ready(function(){
			allRefreshList();
		})
		function allRefreshList() {
			refreshList(-1, t_page);
			refreshList(0, t0_page);
			refreshList(1, t1_page);
			refreshList(2, t2_page);
			refreshList(3, t3_page);
		}
		function refreshList(state, page) {
			var tbody = $('#tbody' + state);
			$.ajax({
				url: 'selectListProductBuy.do',
				type: 'get',
				data: 'page=' + page + '&' + $('#option').val() + '=' + $('#query').val() + '&order=' + order + '&isDesc=' + isDesc + '&state=' + state,
				dataType: 'json',
				success: function(data){
					console.log(data.list);
					tbody.empty();
					if(data.result)
						$.each(data.list, function(index, productBuy){
							var tr = $('<tr>').appendTo(tbody);
							$('<td>').text(productBuy.productBuyNo).appendTo(tr);
							$('<td>').text(productBuy.memberId).appendTo(tr);
							$('<td>').text(productBuy.productName).appendTo(tr);
							$('<td>').text(productBuy.productSize).appendTo(tr);
							$('<td>').text(productBuy.price).appendTo(tr);
							$('<td>').append($('<button>').text('확인').attr('onclick','check_addr(' + productBuy.memberAddressNo + ')')).appendTo(tr);
							$('<td>').text(productBuy.postdate).appendTo(tr);
							$('<td>').text(productBuy.buydate).appendTo(tr);
							if(productBuy.state == 1){
								$('<td>').append($('<button>').text('배송중').attr('onclick','change_state(2,' + productBuy.productBuyNo + ');')).appendTo(tr);
							} else if(productBuy.state == 0) {
								$('<td>').append($('<button>').text('취소').attr('onclick','change_state(-1,' + productBuy.productBuyNo + ');')).appendTo(tr);
							} else {
								$('<td>').appendTo(tr);
							}
						});
					else 
						$('<td colspan="9">').text('주문내역이 없습니다.').appendTo($('<tr>').appendTo(tbody));
				}
			})
		}
		function change_option(){
			var page = 1;
			var order = 'POSTDATE';
			var isDesc = 'DESC';
			allRefreshList();
		}
		function change_query(){
			var page = 1;
			var order = 'POSTDATE';
			var isDesc = 'DESC';
			allRefreshList();
		}
		function check_addr(addrNo){
			$.ajax({
				url: 'selectOneMemberAddress.do',
				type: 'get',
				data: 'no=' + addrNo,
				dataType: 'json',
				success: function(data) {
					if(data.result){
						var addr1 = data.addr.addr1;
						var addr2 = data.addr.addr2;
						alert('주소: ' + addr1 +'\n'
								+ '상제주소: ' + addr2);
					}
				}
			})
		}
		function change_state(state, no){
			var message;
			if(state == 2)
				message = '배송중으로 전환하시겠습니까?';
			else
				message = '해당 구매신청을 취소하시겠습니까?';
			
			if(confirm(message))
				$.ajax({
					url: 'updateProductBuyState.do',
					type: 'get',
					data: 'no=' + no + "&state=" + state,
					dataType: 'json',
					success: function(data) {
						if(data.result){
							allRefreshList();
						} else {
							console.log('ProductBuy table\'s state is not changed');
						}
					}
				})
		}
	</script>
</head>
<body>
	<jsp:include page="../common/manager_header.jsp"></jsp:include>
	<section>
		<h3 class="title_container">구입신청</h3>
		<div class="search_container">
			<select id="option" onchange="change_option();">
				<option value="memberId">아이디</option>
				<option value="productName">상품명</option>
			</select>
			<input type="text" id="query" oninput="change_query();">
		</div>
		<div>
			<h3>신청목록</h3>
			<table>
				<thead>
					<tr>
						<th>주문번호</th>
						<th>아이디</th>
						<th>상품명</th>
						<th>사이즈</th>
						<th>가격</th>
						<th>주소</th>
						<th>구입신청일</th>
						<th>거래확정일</th>
						<th></th>
					</tr>
				</thead>
				<tbody id="tbody0" class="tbody">
				</tbody>
				<tfoot id="tfoot0">
				</tfoot>
			</table>
		</div>
		<div>
			<h3>구매확정</h3>
			<table>
				<thead>
					<tr>
						<th>주문번호</th>
						<th>아이디</th>
						<th>상품명</th>
						<th>사이즈</th>
						<th>가격</th>
						<th>주소</th>
						<th>구입신청일</th>
						<th>거래확정일</th>
						<th></th>
					</tr>
				</thead>
				<tbody id="tbody1" class="tbody">
				</tbody>
				<tfoot id="tfoot1">
				</tfoot>
			</table>
		</div>
		<div>
			<h3>배송중</h3>
			<table>
				<thead>
					<tr>
						<th>주문번호</th>
						<th>아이디</th>
						<th>상품명</th>
						<th>사이즈</th>
						<th>가격</th>
						<th>주소</th>
						<th>구입신청일</th>
						<th>거래확정일</th>
						<th></th>
					</tr>
				</thead>
				<tbody id="tbody2" class="tbody">
				</tbody>
				<tfoot id="tfoot2">
				</tfoot>
			</table>
		</div>
		<div>
			<h3>결산완료</h3>
			<table>
				<thead>
					<tr>
						<th>주문번호</th>
						<th>아이디</th>
						<th>상품명</th>
						<th>사이즈</th>
						<th>가격</th>
						<th>주소</th>
						<th>구입신청일</th>
						<th>거래확정일</th>
						<th></th>
					</tr>
				</thead>
				<tbody id="tbody3" class="tbody">
				</tbody>
				<tfoot id="tfoot3">
				</tfoot>
			</table>
		</div>
		<div>
			<h3>취소/삭제</h3>
			<table>
				<thead>
					<tr>
						<th>주문번호</th>
						<th>아이디</th>
						<th>상품명</th>
						<th>사이즈</th>
						<th>가격</th>
						<th>주소</th>
						<th>구입신청일</th>
						<th>거래확정일</th>
						<th></th>
					</tr>
				</thead>
				<tbody id="tbody-1" class="tbody">
				</tbody>
				<tfoot id="tfoot-1">
				</tfoot>
			</table>
		</div>
	</section>
</body>
</html>