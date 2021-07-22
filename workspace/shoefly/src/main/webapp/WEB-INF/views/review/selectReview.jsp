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
			fn_deleteReview();
			
			fn_insertComment();
			fn_selectCommentList();
			fn_updateCommentPage();
			fn_updateComment();
			fn_deleteComment();
			fn_cancel();
			
			fn_imgExsist();
		});	
		// 리뷰 수정 이벤트
		function fn_updateReview() {
			$('#update_btn').click(function(){
				$('#f').attr('action', 'updatePage.do');
				$('#f').submit();
			});
		}
		
		// 리뷰 삭제 이벤트
		function fn_deleteReview() {
			$('#delete_btn').click(function() {
				if (confirm('삭제하시겠습니까?')) {
					$('#f').attr('action', 'delete.do');
					$('#f').submit();
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
		
		// 댓글 리스트 보여주기
		function fn_commentList(comment) {
		    var form = $('<form>').appendTo('#commentList');
		    if ('${loginMember.memberId}' == comment.memberId) {
		    	var span1 = $('<span id="review_comment">').html( comment.memberId + '<br>' + comment.context + '<input type="hidden" name="reviewCommentNo" value="' + comment.reviewCommentNo + '"> <input type="button" id="updateComment_btn" value="수정"> <input type="button" id="deleteComment_btn" value="삭제">' )
		    	.appendTo(form);
		    	
		    	var span2 = $('<span id="update_comment" style="display:none">').html( comment.memberId + '<br> <input type="hidden" name="reviewCommentNo" value="' + comment.reviewCommentNo + '"> <input type="text" name="context" value="' + comment.context + '"> <input type="button" id="real_updateComment_btn" value="수정"> <input type="button" id="cancel_btn" value="취소">' )
		    	.appendTo(form);
		    
			}else {
				var span = $('<span>').html(comment.memberId + '<br>' + comment.context).appendTo(form);
			}
		}
		
		// 댓글 수정 클릭 이벤트
		function fn_updateCommentPage() {
			$('section').on('click', '#updateComment_btn', function(){
				$(this).parent().hide();
				$(this).parent().next().attr('style', 'false');
			});
		}

		
		// 댓글 수정 이벤트
		function fn_updateComment() {
			$('section').on('click', '#real_updateComment_btn', function(){
				var f = $(this).parent().parent();
				$.ajax({
					url: 'updateComment.do',
					type: 'POST',
					data: f.serialize(),
					dataType: 'json',
					success: function(resultMap) {
						location.reload();
					}
				});
			
			});
		}
		
		// 댓글 삭제 이벤트
		function fn_deleteComment() {
			$('section').on('click', '#deleteComment_btn', function(){
				var f = $(this).parent().parent();
				if ( confirm('삭제하시겠습니까?') ) {
					$.ajax({
						url: 'deleteComment.do',
						type: 'POST',
						data: f.serialize(),
						dataType: 'json',
						success: function(resultMap) {
							location.reload();
						}
					});
				}
			});
		}
		
		// 댓글 수정 취소 클릭 이벤트
		function fn_cancel() {
			$('section').on('click', '#cancel_btn', function(){
				$(this).parent().hide();				
				$(this).parent().prev().attr('style', 'false');
			})
		}
		
		function fn_imgExsist () {
			if (${review.image != null}) {
				$('.content').width(669);
				$('.img').width(400).height(500);
			}
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
		.title_text {
			font-weight: 400;
    		font-size: 26px;
		}
		.memberId {
			font-size: 16px;
		}
		.date, .hit {
			font-size: 14px;
			color: #979797;			
		}
		
		.content {
			border: none;
			width: 100%;
			height: 500px;
			resize: none;
			font-size: 20px;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<div class="review_container">
			<h1> REVIEW </h1>
			<div class="title_box">
				<h3 class="title_text">${review.title}</h3>
				<span class="memberId">${review.memberId}</span><br>
				<span class="date">${review.postdate}</span>&nbsp;&nbsp;<span class="hit">조회 ${review.hit}</span>
			</div>
			<form id="f" method="post">
				<input type="hidden" name="reviewNo" value="${review.reviewNo}">
				<c:if test="${review.memberId == loginMember.memberId}"> <!--  로그인아이디 == 작성자아이디 (수정,삭제 권한) review.memberId == loginMember.memberid -->
					<input type="button" value="수정" id="update_btn">
					<input type="button" value="삭제" id="delete_btn">
				</c:if>
				<input type="button" value="목록" onclick="history.back()">
			</form>
			<hr>
			<div class="content_box">
				<img class="img" alt="${review.image}" src="/shoefly/resources/archive/review/${filename}">
				<textarea class="content">${review.content}</textarea>
			</div>
			<hr>
			<form id="f2">
				<input type="hidden" name="memberId" value="${loginMember.memberId}"> <!-- 로그인아이디 ${loginMember.memberId} -->
				<input type="hidden" name="reviewNo" value="${review.reviewNo}"> <!-- 게시글 번호 -->
				<input type="text"  id="context" name="context" placeholder="댓글 입력">
				<input type="button" value="댓글 등록" id="insertComment_btn">
			</form>
			<hr>
			<div id="commentList"></div>
			<div class="paging"></div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>