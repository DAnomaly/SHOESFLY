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
		});
		
		function fn_updateReview() {
			$('#update_btn').click(function(){
				$('#f').attr('action', 'updateReviewPage.do');
				$('#f').submit();
			});
		}
		
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
							$('<tr>')
							.append( $('<td>').text(comment.memberId) )
							.append( $('<td>').text(comment.context) )
							.append( $('<td>').html(resultMap.paging) )
							.appendTo('#list');
						});
					}else if (resultMap.status == 500) {
						$('<tr>')
						.append( $('<td colspan="3">').html("검색목록이 없습니다.") )
						.appendTo('#list');
					}
				}
			});
		}
		
		
		function fn_insertComment() {
			$('#insertComment_btn').click(function(){
				 $.ajax({
					url: 'insertComment.do',
					type: 'POST',
					data: $('#f2').serialize(),
					dataType: 'json',
					success: function(resultMap){
						location.reload();
					}
					
					
				}); 
			});
			
		} 
	</script>
	
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
		<h1> 리뷰 보기 </h1><br><br>
		
		<!-- 로그인아이디 != 작성자아이디 -->
		<!-- 
		<c:if test="${review.memberId != loginMember.memberid}">
		<h3>${review.title}</h3><br>
		${review.memberId}<br>
		${review.postdate}&nbsp;&nbsp;${review.hit}
		<hr>
		<img alt="${review.image}" src="/shoefly/resources/archive/review/${filename}" style="width: 500px;">
		${review.content}
		</c:if> 
		-->
		
		<!--  로그인아이디 == 작성자아이디 (수정,삭제 권한) review.memberId == loginMember.memberid -->
		<c:if test="${review.memberId == 'user1'}">
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
			<input type="hidden" name="memberId" value="user1"> <!-- 로그인아이디 ${loginMember.memberId} -->
			<input type="hidden" name="reviewNo" value="${review.reviewNo}"> <!-- 게시글 번호 -->
			<input type="text" name="context" placeholder="댓글 입력">
			<input type="button" value="등록" id="insertComment_btn">
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