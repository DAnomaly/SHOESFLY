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
	<title>로그인</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<style>
		body {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}
		section {
			display: flex;
			margin: 0 auto;
			justify-content: center;
			align-items: center;
			height: 80vh;
		}
		/* section::before { 
			content: "";
			position: absolute;
			z-index: 1;
			top: 0;
			right: 0;
			bottom: 0;
			left: 0;
		} */
		.login-form {
			position: relative;
			/* z-index: 2; */
		}
		.login-form .logo {
			text-align: center;
			margin-bottom: 60px;
		}
		.login_box {
			width: 400px;
			position: relative;
			margin-top: 20px;
		}
		.login_box:first-child {
			margin-top: 0;
		}
		.login_box input {
			width: 380px;
			padding: 20px 10px 10px;
			background-color: transparent;
			border: none;
			border-bottom: 1px solid #999;
			font-size: 18px;
			outline: none;
		}
		.login_box label {
			position: absolute;
			left: 10px;
			top: 15px;
			font-size: 18px;
			color: #999;
			transition: all .5s ease;	
		}
		.login_box label.warning {
			color: red !important;
			animation: warning .3s ease;
			animation-iteration-count: 3;
		}
		@keyframes warning {
			0% {transform: translateX(-8px);}
			25% {transform: translateX(8px);}
			50% {transform: translateX(-8px);}
			75% {transform: translateX(8px);}
		}
		.login_box input:focus + label,
		.login_box input:valid + label {
			top: -2px;
			font-size: 13px;
			color: #166cea; /*로그인시 아이디 입력란을 클릭하면 USER ID 색이 바뀌면서 올라간다.*/
		}
		
		
		.btn_box {
			margin-top: 30px;
		}
	
		.btn_box button {
			width: 100%;
			height: 40px;
			font-size: 20px;
			border: none;
			border-radius:5px;
			cursor: pointer;
		}
		.caption {
			margin-top: 20px;
			text-align: center;
		}
		.caption a {
			width: 100%;
			font-size: 15px;
			color: #999;
			text-decoration: none;
			padding: 30px; 
		} 
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<div class="login-form">
			<div class="logo">	
				<a href="/shoefly/">
			       	<img alt="SHOEFLY" src="/shoesfly/resources/asset/image/logo.png">
			    </a>
	      	</div>
	    <form action="login.do" id="f" method="post">
	       	<div class="login_box">
	       	      <input type="text" id="memberId" name="memberId" autocomplete="off" required>
	          	  <label for="memberId">USER ID</label><br>
	       	</div>
	       	<div class="login_box">
	           	  <input type="password" id="pw" name="pw" autocomplete="off" required>
	           	  <label for="pw">PASSWORD</label><br>
	       	</div>
	       	<div class="btn_box">
	       		<button id="login_btn">Login</button>
	       	</div>	
	    </form>
      	<div class="caption">
	    	<a href="joinPage.do">회원가입</a>
	    	<a href="findIdPage.do">아이디찾기</a>
	    	<a href="findPwPage.do">비밀번호찾기</a>
      	</div>
      	</div>
	</section>
	<script>		
		let memberId = $('#memberId');
		let pw = $('#pw');
		let loginBtn = $('#login_btn');
			$(loginBtn).on('click', function(){
				if($(memberId).val() == '') {
					$(memberId).next('label').addClass('warning');
					setTimeout(function(){
						$('label').removeClass('warning');
					}, 1500);
				} 
				else if ($(pw).val() == '') {
					$(pw).next('label').addClass('warning');
					setTimeout(function(){
						$('label').removeClass('warning');
					}, 1500);
				}
				
			})	
		
		
	</script>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>