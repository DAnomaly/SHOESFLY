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
	<script>
		$(document).ready(function(){
			fn_login();
		})
		
		function fn_login() {
			$('#f').submit(function(event){
				if ($('#id').val() == '' || $('#pw').val() == '') {
					alert('아이디와 비밀번호는 필수입니다.');
					event.preventDefault();
					return false;
				}
			})
		}
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
	
		<a href="/shoefly/">
        	<img alt="SHOEFLY" src="/shoesfly/resources/asset/image/logo.png">
     	</a>
      
      <br><br>
      
      <form action="login.do" id="f" method="post">
         <div class="login_box">
               <label for="id">아이디</label><br>
               <input type="text" id="memberId" name="memberId">
         </div>
         <div class="login_box">
               <label for="pw">비밀번호</label><br>
               <input type="password" id="pw" name="pw">
         </div>
         <button>Login</button>
      </form>
      <a href="joinPage.do">회원가입</a>
      <a href="findIdPage.do">아이디찾기</a>
      <a href="findPwPage.do">비밀번호찾기</a>
      
	
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>