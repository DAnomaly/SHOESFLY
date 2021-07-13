<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<a href="/shoefly/manager/"><img alt="SHOEFLY" src="/shoefly/resources/asset/image/logo.png"></a>
	<a href="/shoefly/">메인 페이지로 이동</a>
</header>
<nav>
	<ul>
		<li><a href="index.do"><i class="fas fa-clipboard-list"></i><span>통계</span></a></li>
	</ul>
	<ul>
		<li><a href="memberListPage.do"><i class="fas fa-users"></i><span>회원관리</span></a></li>
		<li><a href="productListPage.do"><i class="fas fa-gift"></i><span>상품관리</span></a></li>
		<li><a href="buyListPage.do"><i class="fas fa-shopping-cart"></i><span>구입신청</span></a></li>
		<li><a href="sellListPage.do"><i class="fas fa-money-bill"></i><span>판매신청</span></a></li>
	</ul>
	<ul>
		<li><a href="noticeListPage.do"><i class="fas fa-exclamation-circle"></i><span>공지사항</span></a></li>
		<li><a href="faqListPage.do"><i class="fas fa-question-circle"></i><span>FAQ</span></a></li>
	</ul>
	<ul>
		<li><a href="alertPage.do"><i class="fas fa-bell"></i><span>알림</span></a></li>
	</ul>
</nav>