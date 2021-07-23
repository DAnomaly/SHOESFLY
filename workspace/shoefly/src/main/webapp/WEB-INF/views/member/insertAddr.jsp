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
	<title>제목</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			fn_findAddress();
			fn_insertAddress();
		})

		function fn_findAddress() {
			$('#addr_search_btn').click(function(){
				goPopup();
			})
		} 
		
		function goPopup(){
			var pop = window.open("jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		}
		
		function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
			document.form.addr1.value = roadAddrPart1;
			document.form.addr2.value = addrDetail;
		}
		
		function fn_insertAddress(){
			$('#insert_addr_btn').click(function(){
				if($('#name').val() == '') {
					alert('배송지를 입력해주세요.');
					return false;
				} else if($('#addr1').val() == '') {
					alert('주소를 입력해주세요.');
					return false;
				}
				$('#form').attr('action', 'insertAddress.do');
				$('#form').submit();
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
			line-height: 30px;
		}
		.container {
			width: 500px;
			margin: 0 auto;
		}
		.pageTitle {
			text-align: center;
		}	
		.insert_addr {
			width: 300px;
			margin-left: 120px;
			display: flex;
		}
		.addr_title {
			margin: 19px 0 8px 5px;
			font-size: 15px;
			font-weight: 700;
		}
		.addr_info {
			width: 350px;
			margin-bottom: 5px;
		}
		.addr_info input[type=text] {
			width: 250px;
			padding: 10px;			
			border: none;
			border-bottom: 1px solid gray;
			outline: none;
		}
		.addr_info input[type=button] {
			width: 60px;
			height: 30px;
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
		.insert_addr_btn {
			width: 200px;
			margin-top: 20px;
			margin-left: 25px;
			padding: 15px 0 15px;
			font-size: 18px;
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
		<div class="pageTitle">
			<h1>신규 주소등록</h1>
		</div>	
		<div class="insert_addr">
		<form name="form" id="form" method="post">		
			<div class="addr_title">
		     	<label for="name">배송지</label>			
			</div>
			<div class="addr_info">
				<input type="text" id="name" name="name" placeholder="배송지를 입력해주세요.">
			</div><br>
			<div class="addr_title">
		     	<label for="addr1">주소</label>	
			</div>
			<div class="addr_info">
				<input type="text" id="addr1"  name="addr1" readonly/>
				<input type="button" id="addr_search_btn" value="주소찾기" class="btn_primary"><br><br>				
			</div>
			<div class="addr_title">
		     	<label for="addr2">상세주소</label>		
			</div>
			<div class="addr_info">
				<input type="text" id="addr2"  name="addr2" readonly/>				
			</div>
			<input type="button" id="insert_addr_btn" value="추가" class="insert_addr_btn btn_primary">
		</form>
		</div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>