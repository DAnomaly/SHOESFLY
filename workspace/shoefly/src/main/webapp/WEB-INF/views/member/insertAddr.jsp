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
				} else if($('#addr1').val() == '') {
					alert('주소를 입력해주세요.');
				}
				$('#form').attr('action', 'insertAddress.do');
				$('#form').submit();
			})
		}
	</script>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
	
		<form name="form" id="form" method="post">		
			<div class="addr_info">
				배송지<br>
				<input type="text" id="name" name="name" placeholder="배송지를 입력해주세요.">
			</div><br>
			<div class="addr_info">
				주소<br>
				<input type="text"  style="width:500px;" id="addr1"  name="addr1" readonly/>
				<input type="button" id="addr_search_btn" value="주소찾기"><br><br>
				상세주소<br>
				<input type="text"  style="width:500px;" id="addr2"  name="addr2" readonly/>				
			</div>
			<input type="button" id="insert_addr_btn" value="추가">
		</form>
	
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>