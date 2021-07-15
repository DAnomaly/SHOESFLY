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
	<title>리뷰 수정</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			fn_selectProduct();
			fn_insertReview();
		});
		
		// 상품 리스트 가져오기
		function fn_selectProduct() {
			$.ajax({
				url: 'selectProduct.do',
				type: 'post',
				dataType: 'json',
				success: function(resultMap) {
					$.each(resultMap.productName, function(i, product) {
						$('<option value="' + product.productName + '">').text(product.productName)
						.appendTo('#productList');
					});
				}
			});
		}
		
		// 리뷰 수정 이벤트
		function fn_insertReview() {
			$('#insert_btn').click(function(){
				if( $('#title').val() == '' ) {
					alert('제목을 입력하세요.');
					$('#title').focus();
					return false;
				}else if ( $('#productList').val() == '' ) {
					alert('상품명을 선택하세요.');
					return false;
				}
				
				if(confirm('작성하시겠습니까?')) {
					$('#f').submit();
				}
			});
		}
		
		// 이미지 파일 체크 
		function fileCheck(obj) {
			 var file_kind = obj.value.lastIndexOf('.');
			 var file_name = obj.value.substring(file_kind+1,obj.length);
			 var file_type = file_name.toLowerCase();

			 var check_file_type=['jpg','png','jpeg'];

			 if(check_file_type.indexOf(file_type)==-1){
			  alert('이미지 파일만 선택할 수 있습니다.');
			  var parent_Obj=obj.parentNode
			  var node=parent_Obj.replaceChild(obj.cloneNode(true),obj);
			  $('#file').val('');
			  return false;
			 }
			}
	
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/header.jsp"/>
	<section>
		<h1>Update Review</h1><br>
		
		<form  id="f" action="updateReview.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="loginId" value="user1"> <!-- 로그인아이디 == 작성자아이디 -->
			<input type="hidden" name="reviewNo" value="${review.reviewNo}"> <!-- 게시물 번호 -->
			<input type="hidden" name="filename" value="${review.image}">
			<input type="text" id="title" name="title" value="${review.title}">
			<select name="productName" id="productList">
				<option value="">선택</option>
			</select>
			<input type="file" id="file" name="file" accept=".jpg, .png, .jpeg" onchange="fileCheck(this)"><br><br>
			<textarea id="content" name="content" rows="20" cols="80" >${review.content}</textarea><br>
			<input type="button" value="등록" id="insert_btn">
			<input type="button" value="취소" onclick="location.href='selectReview.do?reviewNo=${review.reviewNo}'">
		</form>
	
	
	</section>
	<jsp:include page="/resources/asset/jsp/footer.jsp"/>
</body>
</html>