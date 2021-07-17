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
	<title>회원가입</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			fn_idCheck();
			fn_pwCheck();
			fn_pwCheck2();
			fn_emailCheck();
			fn_join();
		})
		
		// 아이디 검사 (정규식검사/중복검사)
		var idPass = false;
		function fn_idCheck(){
			$('#memberId').keyup(function(){
				var regID = /^[a-z0-9]{5,10}$/;
				if(!regID.test($('#memberId').val())) {
					$('#memberId_result').text('아이디는 영어소문자와 숫자를 조합하여 5자 이상 10자이하로 입력해주세요.').css('color', 'red');
					return false;
				}
				$.ajax({
					url: 'idCheck.do',
					type: 'get',
					data: 'memberId=' + $('#memberId').val(),
					dataType: 'json',
					success: function(result){
						if(result.count == 0) {
							$('#memberId_result').text('사용 가능한 아이디입니다.').css('color', 'blue');
							idPass = true;
						} else {
							$('#memberId_result').text('이미 사용중인 아이디입니다.').css('color', 'red');
							idPass = false;
						}
					},
					error: function(xhr, textStatus, errorThrown) {
						
					}
				});
			})
		}
		
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
				if($('#pw').val() == $('#pw2').val()) {
					$('#pw2_result').text('비밀번호가 일치합니다.').css('color', 'blue');
					pwPass2 = true;
				} else {
					$('#pw2_result').text('비밀번호를 확인해주세요.').css('color', 'red');
					pwPass2 = false;
				}
			});
		}
		
		// 이메일 검사 (정규식검사/인증코드발송)
		var emailPass = false;
		function fn_emailCheck(){
			$('#verify_code_btn').click(function(){
				var regEMAIL = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
				if($('#email').val() == '') {
					$('#email_result').text('이메일을 입력하세요.').css('color', 'red');
					//alert('이메일을 입력하세요.');
					$('#email').focus();
					emailPass = false;
				} 
				if(!regEMAIL.test($('#email').val())) {
					$('#email_result').text('이메일을 형식에 맞춰 입력해주세요.').css('color', 'red');
					//alert('이메일을 형식에 맞춰 입력해주세요.');
					$('#email').focus();
					emailPass =  false;
				} else {
					emailPass = true;
				}
				fn_email_orCheck();
			})			
		}
		
		// 이메일 중복검사
		function fn_email_orCheck(){
			$.ajax({
				url: 'emailOrCheck.do',
				type: 'get',
				data: 'email=' + $('#email').val(),
				dataType: 'json',
				success: function(result){
					if(result.count == 0) {
						$('#email_result').text('사용 가능한 이메일입니다.').css('color', 'blue');
						fn_email_verifyCodeSend();
					} else {
						$('#email_result').text('이미 사용중인 이메일입니다.').css('color', 'red');
					}
				},
				error: function(xhr, textStatus, errorThrown) {
					
				}
			});
		}
		
		// 이메일 인증코드발송
		function fn_email_verifyCodeSend(){
			$.ajax({
				url: 'verifyCode.do',
				type: 'get',
				data: 'email=' + $('#email').val(),
				dataType: 'json',
				success: function(result){
					alert('인증코드가 발송되었습니다.');
					fn_verify(result.authCode);
				},
				error: function(xhr, textStatus, errorThorwn) {
					
				}				
			});	
		}
		
		
		// 인증코드 검사
		var authPass = false;
		function fn_verify(authCode) {
			$('#verify_btn').click(function(){
				if(authCode == $('#verify_code').val()) {
					alert('인증에 성공했습니다.');
					authPass = true;
				} else {
					alert('인증에 실패했습니다.');
					authPass = false;
				}
			});
		}
		
		// 회원가입
		function fn_join(){
			$('#join_btn').click(function(){
				if(!idPass) {
					alert('아이디를 확인하세요');
					return false;
				} else if(!pwPass || !pwPass2) {
					alert('비밀번호를 확인하세요.');
					return false;
				} else if(!authPass) {
					alert('이메일 인증을 받아주세요.');
					return false;
				} else {
					$('#f').attr('action', 'join.do');
					$('#f').submit();
				}
			});
		}
		
	</script>	
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
	
		<a href="/shoefly/">
        	<img alt="SHOEFLY" src="/shoesfly/resources/asset/image/logo.png">
     	</a>
     	
     	<div class="join_box">
     		<form id="f" method="post">
     			<div class="join_info">
	     			<label for="memberId">아이디</label><br>
	     			<input type="text" id="memberId" name="memberId"><br>
	     			<span id="memberId_result"></span>
     			</div>
     			<div class="join_info">
	     			<label for="pw">비밀번호</label><br>
	     			<input type="password" id="pw" name="pw"><br>
	     			<span id="pw_result"></span>
     			</div>
     			<div class="join_info">
	     			<label for="pw2">비밀번호 확인</label><br>
	     			<input type="password" id="pw2"><br>
	     			<span id="pw2_result"></span>
     			</div>
     			<div class="join_info">
	     			<label for="name">이름</label><br>
	     			<input type="text" id="name" name="name">
     			</div>
     			<div class="join_info">
	     			<label for="email">이메일</label><br>
	     			<input type="text" id="email" name="email">
	     			<input type="button" value="인증코드발송" id="verify_code_btn"><br>
	     			<span id="email_result"></span>
     			</div>
     			<div class="join_info">
	     			<label for="memberId">인증코드</label><br>
	     			<input type="text" id="verify_code" name="verify_code">
	     			<input type="button" value="인증" id="verify_btn"><br>
     			</div>
     			<input type="button" value="회원가입" id="join_btn">
     		</form>
     	</div>
		
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>