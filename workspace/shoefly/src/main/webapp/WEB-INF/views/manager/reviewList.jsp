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
			//fn_deleteReview();
		})
		/* 
		var reviewNo = $('#reviewNo').val();
		function fn_deleteReview(){
			$('#delete_btn').click(function(){
				if(confirm('정말 삭제하시겠습니까?')) {
					location.href = 'deleteReview.do?reviewNo=' + reviewNo;
				}
			})
		} */
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/manager_header.jsp"></jsp:include>
	<section>
		<div class="review_box">
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
						<td><a href="selectReview.do?reviewNo=${review.reviewNo}">${review.title}</a></td>
						<td>${review.productName}</td>
						<td>${review.hit}</td>
						<td>${review.postdate}</td>
						<%-- <input type="hidden" id="reviewNo" name="reviewNo" value="${review.reviewNo}"> --%>
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
		</div>
	</section>
</body>
</html>