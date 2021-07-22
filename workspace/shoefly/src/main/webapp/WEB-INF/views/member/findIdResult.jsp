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
	<title>아이디 찾기 결과</title>
	<style>
		body {
			margin: 0;
			padding: 0;
		}
		section {
			width: 500px;
			margin: 50px auto;
			display: flex;
			justify-content: center;
			align-items: center;
			min-height: 300px;
			height: 100%;
			line-height: 30px;
		}
		.container {
			width: 700px;
			margin: 0 auto;
			text-align: center;
		}
		.pageTitle {
			text-align: center;
		}
		.btn-box {
			margin-top: 10px;
		}		
		.btn_type {
			height: 30px;
			border: none;
			box-shadow: 1px 1px 3px 1px #dadce0 inset;
			border-radius: 5px;
			background-color: lightgray; 
			cursor: pointer;
		}
		.btn_type:hover {
			background-color: darkgray;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<div class="container">
		<div class="pageTitle">
			<h1>아이디찾기 결과</h1>
		</div>
		
		<c:if test="${findMember == null}">
			${message}<br><br>
			<a href="joinPage.do">회원가입</a>
		</c:if>
		<c:if test="${findMember != null}">
			<div>
			<span>아이디 : ${findMember.memberId}</span><br>
			<span>가입일 : ${findMember.regdate}</span>
			</div>
			<div class="btn-box">
			<input type="button" value="로그인" onclick="location.href='loginPage.do'" class="btn_type">&nbsp;
			<input type="button" value="비밀번호찾기" onclick="location.href='findPwPage.do'" class="btn_type">
			</div>
		</c:if>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>