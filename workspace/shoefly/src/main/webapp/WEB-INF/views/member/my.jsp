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
	<title>마이페이지</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<c:if test="${loginMember.manager == 1}">
	<script>
		location.href="/shoefly/manager/";
	</script>
	</c:if>
	<script>
		$(document).ready(function(){
			fn_delete_member();
			fn_updatePw();
			fn_updateName();
		})
		
		function fn_delete_member(){
			$('#delete_member_btn').click(function(){
				if(confirm('정말 탈퇴하시겠습니까?')) {
					location.href = 'deleteMember.do';
				}
			})
		}
		
		function fn_updatePw(){
			$('#update_pw_btn').click(function(){
				location.href = 'updatePwPage.do';
			})
		}
		
		function fn_updateName(){
			$('#update_name_btn').click(function(){
				$('#f').attr('action', 'updateName.do');
				$('#f').submit();
			})
		}
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
	
		<div class="pageTitle">
			<h1>마이페이지</h1>
		</div>		
		<form id="f" method="post">
			<div class="my_info">
	     		<label for="memberId">아이디</label><br>
	     		<input type="text" id="memberId" name="memberId" value="${loginMember.memberId}" disabled>
     			<input type="button" value="회원탈퇴" id="delete_member_btn">
     		</div>
     		<div class="my_info">
	     		<label for="pw">비밀번호</label><br>
	     		<input type="password" id="pw" name="pw" value="****" disabled>
     			<input type="button" value="변경" id="update_pw_btn">
     		</div>
     		<div class="my_info">
	     		<label for="pw">이름</label><br>
	     		<input type="text" id="name" name="name" value="${loginMember.name}">
     			<input type="button" value="변경" id="update_name_btn">
     		</div>
     		<div class="my_info">
	     		<label for="pw">이메일</label><br>
	     		<input type="text" id="email" name="email" value="${loginMember.email}" disabled>
     		</div>
		</form>
   		<a href="addressPage.do">주소록</a>
   		<a href="">구매내역</a>
   		<a href="">판매내역</a>
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>