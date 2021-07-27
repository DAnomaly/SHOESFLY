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
	<script>
		$(document).ready(function(){
			column_onchange();
		})
		function column_onchange() {
			$('#column').change(function(){
				if($('#column').val() == 'POSTDATE'){
					date_search_toggle(true);
					default_search_toggle(false);
				} else {
					date_search_toggle(false);
					default_search_toggle(true);
				}
			})
		}
		function default_search_toggle(isAble) {
			if(isAble) {
				$('#default_search').show();
				$('#query').attr('disabled',false);
			} else {
				$('#default_search').hide();
				$('#query').attr('disabled',true);
			}
		}
		function date_search_toggle(isAble) {
			if(isAble) {
				$('#date_search').show();
				$('#startDate').attr('disabled',false);
				$('#endDate').attr('disabled',false);
			} else {
				$('#date_search').hide();
				$('#startDate').attr('disabled',true);
				$('#endDate').attr('disabled',true);
			}
		}
	</script>
</head>
<body>
	<jsp:include page="../common/manager_header.jsp"></jsp:include>
	<section>
		<h2>REVIEW</h2>
		<form method="get">
			<select id="column" name="column">
				<option value="ALL">제목/내용</option>
				<option value="TITLE">제목</option>
				<option value="CONTENT">내용</option>
				<option value="POSTDATE">날짜</option>
			</select>
			<span id="default_search">
				<input type="text" id="query" name="query" placeholder="검색내용입력"/>
				<button><i class="fas fa-search"></i></button>
			</span>
			<span id="date_search" style="display: none;">
				<input type="date" id="startDate" name="startDate" value="2021-01-01" disabled/>
				<input type="date" id="endDate" name="endDate" value="${nowDate}" disabled/>
				<button><i class="fas fa-search"></i></button>
			</span>
		</form>
		<table class="content-table">
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
						<td><a href="/shoefly/review/select.do?reviewNo=${review.reviewNo}&page=1">${review.title}</a></td>
						<td>${review.productName}</td>
						<td>${review.hit}</td>
						<td>${review.postdate}</td>
						<c:if test="${review.state == 0}">
							<td><input type="button" id="delete_btn" value="삭제" onclick="location.href='deleteReview.do?reviewNo=${review.reviewNo}'"></td>
						</c:if>
						<c:if test="${review.state == -1}">
							<td><input type="button" id="restore_btn" value="복구" onclick="location.href='restoreReview.do?reviewNo=${review.reviewNo}'"></td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="paging">
			${paging}
		</div>
	</section>
</body>
</html>