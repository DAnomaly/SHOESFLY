<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/manager_header.css">
	<title>${notice.title}</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		function preview_btn() {
			$('#preview').html($('#content').val());
			$('.content').toggle();
			$('.preview').toggle();
		}
		function edit_btn() {
			$('#f').action('updateNotice.do');
			$('#f').submit();
		}
		function del_btn() {
			$('#f').action('deleteNotice.do');
			$('#f').submit();
		}
	</script>
</head>
<body>
	<form id="f" method="post">
		<c:if test="${empty notice}">
		<h3>공지사항 작성</h3>
		</c:if>
		<c:if test="${not empty notice}">
		<h3>공지사항 수정</h3>
		</c:if>
		<div class="title">
			<input type="text" hidden="hidden"/>
			<input type="hidden" name="noticeNo" value="#{notice.noticeNo}"/>
			<input type="text" id="title" name="title" value="${notice.title}"/>
		</div>
		<div class="content">
			<textarea id="content" name="content">${notice.content}</textarea>
		</div>
		<div class="preview" style="display: none;">
			<div id="preview"></div>
		</div>
		<div>
			<input type="button" value="미리보기" onclick="preview_btn();"/>
			<input type="button" value="수정하기" onclick="edit_btn();"/>
			<input type="button" value="삭제하기" onclick="del_btn();"/>
		</div>
	</form>
</body>
</html>