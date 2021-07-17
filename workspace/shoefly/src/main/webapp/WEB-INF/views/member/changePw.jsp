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
	<title>비밀번호 변경하기</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			fn_updatePw();
			fn_pwCheck();
			fn_pwCheck2();
		})
	
		// 비밀번호 검사 (정규식검사)
		var pwPass = false;
		function fn_pwCheck(){
			$('#pw').keyup(function(){
				var regPW = /^[0-9]{4,10}$/;
			 	if(regPW.test($('#pw').val())){
					$('#pw_result').text('사용가능한 비밀번호입니다.').css('color', 'blue');	
					pwPass = true;
				} else if(!regPW.test($('#pw').val())) {
					$('#pw_result').text('비밀번호는 0~9사이의 숫자 4자이상 10자이하로 입력해주세요.').css('color', 'red');
					pwPass = false; 
				}
			});
		}
		
		// 비밀번호2 검사 (비밀번호 = 비밀번호2)
		var pwPass2 = false;
		function fn_pwCheck2(){
			$('#pw2').keyup(function(){
				if($('#pw').val() != $('#pw2').val()) {
					$('#pw2_result').text('비밀번호를 확인해주세요.').css('color', 'red');
					pwPass2 = false;
				} else {
					$('#pw2_result').text('비밀번호가 일치합니다.').css('color', 'blue');
					pwPass2 = true;
				}
			});
		}
		
		// 비밀번호 변경
		function fn_updatePw(){
			$('#updatePw_btn').click(function(){
				if(!pwPass || !pwPass2) {
					alert('비밀번호를 확인하세요.');
					return false;
				} else {
					$('#f').attr('action', 'updatePw.do');
					$('#f').submit();
				}
			});
		}	
	</script>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
	
		<div class="pageTitle">
			<h1>비밀번호 변경</h1>
		</div>
		
		<c:if test="${findMember == null}">
			일치하는 회원정보가 없습니다.<br><br>
			<a href="joinPage.do">회원가입</a>
		</c:if>
		<c:if test="${findMember != null}">
			<form id="f" method="post">
				<input type="hidden" name="memberNo" value="${findMember.memberNo}">
				<div class="updatePw_info">
	     			<label for="pw">새 비밀번호</label><br>
	     			<input type="password" id="pw" name="pw"><br>
	     			<span id="pw_result"></span>
     			</div>
     			<div class="updatePw_info">
	     			<label for="pw2">비밀번호 확인</label><br>
	     			<input type="password" id="pw2"><br>
	     			<span id="pw2_result"></span>
     			</div>
				<input type="button" value="비밀번호변경" id="updatePw_btn">
			</form>
		</c:if>
	
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>