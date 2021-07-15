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
	<title>리뷰 리스트</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			fn_search();
		});
		
		
		function fn_search(){
			$('#search_btn').click(function(){
				if ( $('#column').val() == '' ) {
					location.href = 'reviewListPage.do';
				}else if ( $('#query').val() == '' ) {
					location.href = 'reviewListPage.do';					
				}else {
					$('#f').submit();
				}
			});
		}
		
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
		<h1>REVIEW</h1><br>
			<div class="search">
			<form method="get" autocomplete="off" id='f'>
				<select id="column" name="column">
					<option value="">선택</option>
					<option value="MEMBER_ID">작성자</option>
					<option value="TITLE">제목</option>
				</select>
				<input type="text" id="query" name="query">
				<input type="button" value="검색" id="search_btn">
				<input type="button" value="후기 작성" onclick="location.href='insertReviewPage.do'">
			</form>
			전체 ${page.totalRecord}개 검색됨
		</div>
		<table border="1">
			<thead>
				<tr>
					<td>No</td>
					<td>작성자</td>
					<td>제목</td>
					<td>제품명</td>
					<td>조회수</td>
					<td>작성일</td>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty review}">
					<tr>
						<td colspan="6">검색결과가 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach items="${review}" var="review" varStatus="status">
					<tr>
						<td>${review.reviewNo}</td>
						<td>${review.memberId}</td>
						<td><a href="selectReview.do?reviewNo=${review.reviewNo}&page=1">${review.title}</a></td>
						<td>${review.productName}</td>
						<td>${review.hit}</td>
						<td>${review.postdate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="paging">
			${paging}
		</div>
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>