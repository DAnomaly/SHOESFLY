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
			fn_loginCheck();
		});
		
		// 검색 이벤트
		function fn_search(){
			$('#search_btn').click(function(){
				if ( $('#column').val() == '' || $('#query').val() == '') {
					location.href = 'reviewListPage.do';
				}else {
					$('#f').attr('action', 'reviewListPage.do' );
					$('#f').submit();
				}
			});
		}
		
		// 로그인 상태 체크
		function fn_loginCheck() {
			$('#insertReview_btn').click(function(){
				if (${loginMember.memberId == null}) {
					location.href='/shoefly/member/loginPage.do';
				}else {
					location.href = 'insertReviewPage.do';
				}
			});
		}
	</script>
	<style>
		*{
			box-sizing: border-box;
		}
		.review_container {
			width: 1080px;
			margin: 0 auto;
		}
		.paging {
			margin: auto;
			height: 50px;
			line-height: 50px;
			text-align: center;
		}
		.search_box {
			float: left;
			width: 100%;
			height: 30px;
			margin-top: 10px;
			margin-bottom: 10px;
		}
		.insertReview_btn {
			float: right;
		}
		.review_table {
			width: 100%;
			margin: 0 auto;
			text-align: center;
			border-collapse: collapse;
		}
		.thead {
			background-color: #909090;
			font-weight: bold;
		}
		td {
			border-bottom: 1px solid gray;
			height: 50px;
		
		}
		
		
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<div class="review_container">
			<div class="search_box">
				<form method="get" autocomplete="off" id='f'>
					<select id="column" name="column">
						<option value="">선택</option>
						<option value="MEMBER_ID" <c:if test="${column == 'MEMBER_ID'}">selected="selected"</c:if>>작성자</option>
						<option value="TITLE" <c:if test="${column == 'TITLE'}">selected="selected"</c:if>>제목</option>
					</select>
					<input type="text" id="query" name="query">
					<input type="button" value="검색" id="search_btn">
					<input type="button" value="후기 작성" class="insertReview_btn" id="insertReview_btn">  <!-- onclick="location.href='/shoefly/member/loginPage.do'" -->
				</form>
			</div>
			<table class="review_table">
				<thead class="thead">
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
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>