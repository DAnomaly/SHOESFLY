<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/manager_header.css">
	<title>SHOEFLY : 관리자</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="/shoefly/resources/asset/js/manager/memberList.js" charset="utf-8"></script>
</head>
<body>
	<jsp:include page="../common/manager_header.jsp"></jsp:include>
	<section>
		<h3><a href="memberListPage.do">회원관리</a></h3>
		<div class="search">
			<select id="column">
				<option value="MEMBER_NO">회원번호</option>
				<option value="MEMBER_ID">아이디</option>
				<option value="NAME">이름</option>
				<option value="EMAIL">이메일</option>
				<option value="REGDATE">가입일</option>
			</select>
			<div class="default_search">
				<input type="text" id="query"/>
				<button type="button" onclick="search_btn()"><i class="fas fa-search"></i></button>
			</div>
			<div class="regdate_search">
				<input type="date" id="startDate"/>
				<input type="date" id="endDate"/>
				<button type="button" onclick="search_btn()"><i class="fas fa-search"></i></button>
			</div>
		</div>
		<div class="member_table">
			<table>
				<thead>
					<tr>
						<th onclick="setOrder('MEMBER_NO');">회원번호</th>
						<th onclick="setOrder('MEMBER_ID');">아이디</th>
						<th onclick="setOrder('NAME');">이름</th>
						<th onclick="setOrder('EMAIL');">이메일</th>
						<th onclick="setOrder('REGDATE');">가입일</th>
						<th onclick="setOrder('STATE');">가입/탈퇴</th>
					</tr>
				</thead>
				<tbody id="member_tbody"></tbody>
			</table>
		</div>
		<div id="member_paging"></div>
	</section>
</body>
</html>