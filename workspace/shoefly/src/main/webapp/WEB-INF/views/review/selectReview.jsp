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
	<title>리뷰 보기</title>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
		<h1> 리뷰 보기 </h1><br><br>
		
		<h3>${review.title}</h3><br>
		${review.memberId}<br>
		${review.postdate}&nbsp;&nbsp;${review.hit}<br><br>
		<hr>
		<img alt="${review.image}" src="/shoefly/resources/archive/review/${filename}" style="width: 500px;"><br><br>
	
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>