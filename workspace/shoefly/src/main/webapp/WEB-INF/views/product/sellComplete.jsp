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
	<title>판매완료</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	$(document).ready(function(){
		
		submitCheck();
	});
	
	
	function submitCheck(){
		$('#sellNow_btn').click(function(){
			if($('#addrname').val() == "" || $('#addr1').val() == ""){
				alert('반송지를 입력해주세요.');
			} else if($('#check1').is(":checked") == false){
				alert("필수 이용약관을 읽고 동의해주세요.");
				return false;
			} else if($('#check2').is(":checked") == false){
				alert("필수 이용약관을 읽고 동의해주세요.");
				return false;
			} else{
				//판매완료하기
				$('#f').attr('action', 'sell.do');
				//sellCommand제작해야함
				$('#f').serialize();
				$('#f').submit();
			}
		});
	}
	</script>
	<style>
		*{
			box-sizing: border-box;
		}
		.container{
			margin: auto;
			width: 1080px;
		}
		.infoBox{
			margin-top: 100px;
			width: 100%;
			height: 200px;
			border: 1px solid lightgray;
			text-align: center;
		}
		i{
			margin-top: 50px;
			margin-bottom: 30px;
			font-size: 30px;
		}
		table{
			margin-top: 30px;
			width: 100%;
			border-collapse: collapse;
			border: 1px solid lightgray;
		}
		td{
			padding: 5px;
		}
		.tableName > td:nth-child(1){width: 15%; text-align: center;}
		.tableName > td:nth-child(2){width: 15%; text-align: center;}
		.tableName > td:nth-child(3){width: 70%;}
		tr >td:nth-last-child(2){text-align: center;}
		.listBtn{
			float: right;
			margin-top: 20px;
			border: none;
			padding: 10px;
		}
		.listBtn:hover {
			cursor: pointer;
			font-weight: border;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<div class="container">
			<div class="infoBox">
				<i class="fas fa-check"></i><br>
				상품 구매가 완료되었습니다.
			</div>
			<form id="f" method="post">
				<table border="1">
					<tbody>
						<tr class="tableName">
							<td rowspan="5">상품/결제정보</td>
							<td>구매 고객</td>
							<td></td>
						</tr>
						<tr>
							<td>상품명</td>
							<td></td>
						</tr>
						<tr>
							<td>결제일</td>
							<td></td>
						</tr>
						<tr>
							<td>결제금액</td>
							<td></td>
						</tr>
						<tr>
							<td>배송지</td>
							<td></td>
						</tr>
					</tbody>
				</table>
				<input type="button" value="추가 구매하기" class="listBtn" onclick="href='productListPage.do'">
			</form>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>