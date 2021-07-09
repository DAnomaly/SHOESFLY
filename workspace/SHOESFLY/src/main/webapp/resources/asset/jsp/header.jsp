<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<div class="logo_container">
		<a href="/shoesfly/">
			<img alt="SHOESFLY" src="/shoesfly/resources/asset/image/logo.png">
		</a>
	</div>
	<div class="login_container">
		<c:if test="${empty loginMember}">
			<a href="/shoesfly/member/loginPage.do">LOGIN</a>
			<a href="/shoesfly/member/joinPage.do">JOIN</a>
		</c:if>
		<c:if test="${not empty loginMember}">
			<span>Welcome! '${loginMember.memberId}'</span>
			<a href="/shoesfly/member/logout.do">LOGOUT</a>
			<a href="/shoesfly/member/myPage.do">MYPAGE</a>
		</c:if>
	</div>
	<div class="nav_container">
		<a href="/shoesfly/product/listPage.do">PRODUCT</a>
		<a href="/shoesfly/review/listPage.do">REVIEW</a>
		<a href="/shoesfly/notice/noticeListPage.do">NOTICE</a>
		<a href="/shoesfly/notice/faqListPage.do">FAQ</a>
	</div>
</header>