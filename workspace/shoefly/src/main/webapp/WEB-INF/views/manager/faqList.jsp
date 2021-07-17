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
	<script>
		$(document).ready(function(){
			$('#column').change(function(){
				if($('#column').val() == 'POSTDATE'){
					$('#default_search').hide();
					$('#date_search').show();
				} else {
					$('#default_search').show();
					$('#date_search').hide();
				}
			})
		});
		function fn_show(no) {
			if(no == null) {
				no = '';
			}
			window.open("faqInfoPage.do?no=" + no,"noticeInfo","width=720,height=600");
		}
	</script>
</head>
<body>
	<jsp:include page="../common/manager_header.jsp"></jsp:include>
	<section>
		<h3 class="title">
			<a href="faqListPage.do">FAQ</a>
		</h3>
		<div class="search">
			<form method="get" autocomplete="off">
				<select id="column" name="column">
					<option value="ALL">제목/내용</option>
					<option value="TITLE">제목</option>
					<option value="CONTENT">내용</option>
					<option value="POSTDATE">날짜</option>
				</select>
				<span id="default_search">
					<input type="text" name="query"/>
					<button><i class="fas fa-search"></i></button>
				</span>
				<span id="date_search" style="display: none;">
					<input type="date" name="startDate" value="2021-01-01"/>
					<input type="date" name="endDate" value="${nowDate}"/>
					<button><i class="fas fa-search"></i></button>
				</span>
			</form>
		</div>
		<div class="write">
			<input type="button" value="새글 추가" onclick="fn_show()"/>
		</div>
		<table class="content">
			<thead>
				<tr>
					<th>번호</th>
					<th>질문</th>
					<th>작성일자</th>
					<th>수정</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty list}">
				<tr>
					<td colspan="4">찾으시는 FAQ가 없습니다.</td>
				</tr>
				</c:if>
				<c:forEach items="${list}" var="faq">
				<tr>
					<td>${faq.faqNo}</td>
					<td>${faq.question}</td>
					<td>${faq.postdate}</td>
					<td>
						<input type="button" value="수정" onclick="fn_show(${faq.faqNo});"/>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="paging">${paging}</div>
	</section>
</body>
</html>