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
			if($('#title').val() == '') {
				alert('제목을 입력해 주세요.')
				$('#title').focus();
				return;
			}
			if($('#content').val() == '') {
				alert('내용을 입력해 주세요.')
				$('#content').focus();
				return;
			}
			$.ajax({
				url: 'insertNotice.do',
				type: 'POST',
				data: 'noticeNo=' + $('#noticeNo').val() + '&title=' + $('#title').val() + '&content=' + $('#content').val(),
				dataType: 'json',
				success: function(data) {
					console.log("yes");
					console.log(data);
					if (data.result) {
						alert(data.message);
						opener.parent.location.reload();
						window.close();
					}
				}
			})
		}
		function del_btn() {
			if(!confirm('정말로 삭제하겠습니까?\n (복구가 되지 않습니다)')){
				return;
			}
			$.ajax({
				url: 'deleteNotice.do',
				type: 'POST',
				data: 'noticeNo=' + $('#noticeNo').val(),
				dataType: 'json',
				success: function(data) {
					console.log("yes");
					console.log(data);
					if (data.result) {
						alert(data.message);
						opener.parent.location.reload();
						window.close();
					}
				}
			})
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
			<input type="hidden" id="noticeNo" name="noticeNo" value="${notice.noticeNo}"/>
			<input type="text" id="title" name="title" value="${notice.title}" placeholder="제목"/>
		</div>
		<div class="content">
			<textarea id="content" name="content">${notice.content}</textarea>
		</div>
		<div class="preview" style="display: none;">
			<div id="preview"></div>
		</div>
		<div>
			<input type="button" value="미리보기" onclick="preview_btn();"/>
			<c:if test="${empty notice}">
			<input type="button" value="등록하기" onclick="edit_btn();"/>
			</c:if>
			<c:if test="${not empty notice}">
			<input type="button" value="수정하기" onclick="edit_btn();"/>
			<input type="button" value="삭제하기" onclick="del_btn();"/>
			</c:if>
		</div>
	</form>
</body>
</html>