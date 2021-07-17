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
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		
		<div class="pageTitle">
			<h1>아이디찾기 결과</h1>
		</div>
		
		<c:if test="${findMember == null}">
			${message}<br><br>
			<a href="joinPage.do">회원가입</a>
		</c:if>
		<c:if test="${findMember != null}">
			아이디 : ${findMember.memberId}<br>
			가입일 : ${findMember.regdate}<br><br>
			<input type="button" value="로그인" onclick="location.href='loginPage.do'">
		</c:if>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>