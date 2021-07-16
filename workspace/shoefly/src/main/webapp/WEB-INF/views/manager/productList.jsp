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
		$(document).ready(function(){
			search();
		})
		
		function search() {
			$('#tbody').empty();
			$('#tfoot').empty();
			$.ajax({
				url: 'selectListProduct.do',
				type: 'GET',
				data: $('#f').serialize(),
				dataType: 'json',
				success: function(data){
					if(data.result){
						
						var list = data.list;
						$.each(list,function(index, product){
							var tr = $('<tr>').appendTo('#tbody');
							$('<td>').text(product.productNo).appendTo(tr);
							$('<td>').append($('<a>').text(product.productName).attr('href','productInfoPage.do?no=' + product.productNo)).appendTo(tr);
							$('<td>').text(product.brand).appendTo(tr);
							$('<td>').text(product.price).appendTo(tr);
							$('<td>').append($('<span>').attr('onclick','show_img(\'' + product.image + '\');').html('<i class="fas fa-image"></i>')).appendTo(tr);
							if(product.state == 0)
								$('<td style="color:blue;">').text('거래중').appendTo(tr);
							else
								$('<td style="color:red;">').text('정지').appendTo(tr);
						});
						
						var page = data.page;
						var td = $('<td colspan="6">').appendTo($('<tr>').appendTo('#tfoot'));
						if(page.beginPage == 1)
							$('<span>').html('&lt;').appendTo(td);
						else
							$('<span>').html('&lt;').attr('onclick','setPage(' + (page.beginPage - 1) + ')').appendTo(td);
						for (var i = page.beginPage; i <= page.endPage; i++) {
							if(i == page.page) {
								$('<span>').text(i).appendTo(td);
							} else {
								$('<span>').text(i).attr('onclick','setPage(' + i + ')').appendTo(td);
							}
						}
						if(page.endPage == page.totalPage)
							$('<span>').html('&gt;').appendTo(td);
						else
							$('<span>').html('&gt;').attr('onclick','setPage(' + (page.endPage + 1) + ')').appendTo(td);
						
					} else {
						$('<td colspan="6">').text('검색된 상품이 없습니다.').appendTo(tr);
					}
				}
			})
		}
	
		function setOrder(data) {
			var order = $('#order');
			var isDesc = $('#isDesc');
			if(order.val() == data){
				if(isDesc.val() == 'DESC')
					isDesc.val('ASC');
				else
					isDesc.val('DESC');
				search();
			} else {
				order.val(data);
				isDesc.val('ASC');
				search();
			}
		}
		
		function setPage(data) {
			$('#page').val(data);
			search();
		}
		
		function show_img(data) {
			window.open("/shoefly/resources/archive/product/" + data,"noticeInfo");
		}
		
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/manager_header.jsp"></jsp:include>
	<section>
		<h3>PRODUCT</h3>
		<form id="f">
			<span>검색</span><br>
			<input type="hidden" id="page" name="page" value="1"/>
			<input type="hidden" id="order" name="order" value="PRODUCT_NO"/>
			<input type="hidden" id="isDesc" name="isDesc" value="ASC"/>
			<input type="text" name="productNo" placeholder="상품번호"/><br>
			<input type="text" name="productName" placeholder="상품이름"/><br>
			<div>
				<label><input type="checkbox" name="brand" value="Nike"/><span>Nike</span></label>
				<label><input type="checkbox" name="brand" value="Jordan"/><span>Jordan</span></label>
				<label><input type="checkbox" name="brand" value="New Balance"/><span>New Balance</span></label>
				<label><input type="checkbox" name="brand" value="Adidas"/><span>Adidas</span></label>
			</div>
			<input type="button" value="검색" onclick="search();"/>
		</form>
		<div>
			<table>
				<thead>
					<tr>
						<th onclick="setOrder('PRODUCT_NO');">상품번호</th>
						<th onclick="setOrder('PRODUCT_NAME');">상품이름</th>
						<th onclick="setOrder('BRAND');">브랜드</th>
						<th onclick="setOrder('PRICE');">정가</th>
						<th>이미지</th>
						<th onclick="setOrder('STATE');">상태</th>
					</tr>
				</thead>
				<tbody id="tbody"></tbody>
				<tfoot id="tfoot"></tfoot>
			</table>
		</div>
	</section>
</body>
</html>