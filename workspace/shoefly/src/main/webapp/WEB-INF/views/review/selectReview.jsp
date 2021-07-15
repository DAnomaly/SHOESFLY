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
	<title>리뷰 보기</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			fn_updateReview();
			fn_selectCommentList();
			fn_insertComment();
			fn_updateComment();
		});
		
		// 댓글 리스트 보여주기
		function fn_commentList(comment) {
			var tr = $('<tr>').appendTo('#list');
			if('${loginMember.memberId}' == comment.memberId) // 로그인유저와 댓글작성자가 같을때
				var td = $('<td>').html(comment.memberId + '<br>' + comment.context + '<input type="button" id="updateComment_btn" value="수정"> <input type="button" id="deleteComment_btn" value="삭제">' ).appendTo(tr);
			else {
				var td = $('<td>').html(comment.memberId + '<br>' + comment.context).appendTo(tr);
			}
		}
		
		// 댓글 수정 이벤트
		function fn_updateComment() {
			$('section').on('click', '#updateComment_btn', function(){
				location.href = 'updateCommentPage.do';
			});
		}
		
		
		
		// 리뷰 수정 이벤트
		function fn_updateReview() {
			$('#update_btn').click(function(){
				$('#f').attr('action', 'updateReviewPage.do');
				$('#f').submit();
			});
		}
		
		// 댓글 리스트, 페이징
		function fn_selectCommentList() {
			var page = 1;
			if (${param.page} != 1) {
				page = ${param.page};
			}
			$.ajax({
				url: 'selectCommentList.do',
				type: 'POST',
				data: 'reviewNo=' + ${review.reviewNo} + '&page=' + page,
				dataType: 'json',
				success: function(resultMap) {
					$('#list').empty();
					if(resultMap.status == 200) {
						$.each(resultMap.commentList, function(i, comment){
							fn_commentList(comment);	
						});
							$('<span>').html(resultMap.paging)
							.appendTo('.paging');
					}else if (resultMap.status == 500) {
						
					}
				}
			});
		}
		
		// 댓글 등록 이벤트
		function fn_insertComment() {
			$('#insertComment_btn').click(function(){
				if ( ${loginMember.memberId == null} ) {
					location.href='/shoefly/member/loginPage.do';
				}else if ( $('#context').val() == ''){
					alert('댓글을 입력하세요.');
				}else {
					 $.ajax({
						url: 'insertComment.do',
						type: 'POST',
						data: $('#f2').serialize(),
						dataType: 'json',
						success: function(resultMap){
							location.reload();
						}
					}); 
				}
			});
			
		} 
	</script>
	
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
		<h1> 리뷰 보기 </h1><br><br>
		<!-- 로그인아이디 != 작성자아이디 -->
		
		<c:if test="${review.memberId != loginMember.memberId}">
		<h3>${review.title}</h3><br>
		${review.memberId}<br>
		${review.postdate}&nbsp;&nbsp;${review.hit}
		<input type="button" value="목록" onclick="location.href='reviewListPage.do'">
		<hr>
		<img alt="${review.image}" src="/shoefly/resources/archive/review/${filename}" style="width: 500px;">
		${review.content}
		</c:if> 
		
		
		<!--  로그인아이디 == 작성자아이디 (수정,삭제 권한) review.memberId == loginMember.memberid -->
		<c:if test="${review.memberId == loginMember.memberId}">
		<h3>${review.title}</h3><br>
		${review.memberId}<br>
		${review.postdate}&nbsp;&nbsp;${review.hit}
		<form id="f" method="post">
			<input type="hidden" name="reviewNo" value="${review.reviewNo}">
			<input type="button" value="수정" id="update_btn">
			<input type="button" value="삭제" id="delete_btn">
			<input type="button" value="목록" onclick="location.href='reviewListPage.do'">
		</form>
		<hr>
		<img alt="${review.image}" src="/shoefly/resources/archive/review/${filename}" style="width: 500px;">
		${review.content}
		</c:if>
		<hr>
		<form id="f2">
			<input type="hidden" name="memberId" value="${loginMember.memberId}"> <!-- 로그인아이디 ${loginMember.memberId} -->
			<input type="hidden" name="reviewNo" value="${review.reviewNo}"> <!-- 게시글 번호 -->
			<input type="text"  id="context" name="context" placeholder="댓글 입력">
			<input type="button" value="댓글 등록" id="insertComment_btn">
		</form>
		<hr>
		<table border="1">
			<tbody id="list">
			</tbody>
		</table>
		<div class="paging">
		</div>
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>