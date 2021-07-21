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
	<title>리뷰 작성</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			fn_selectProduct();
			fn_insertReview();
		});
		
		// 상품리스트 가져오기
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
		
		// 리뷰 등록 이벤트
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
		file = $('#img').prop("files")[0];
                                blobURL = window.URL.createObjectURL(file);
                                $('#image_preview img').attr('src', blobURL);
                                $('#image_preview').slideDown(); //업로드한 이미지 미리보기 
                                $(this).slideUp(); //파일 양식 감춤
		// 파일 등록시 이미지 파일 확인
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
			}else {
				if (obj.files && obj.files[0]) {
					var reader = new FileReader();
				    reader.onload = function (e) {
				    	$('.img').attr('src', e.target.result)
				        .width(400)
				        .height(500);
				        $('.content').width(669);
					}
				reader.readAsDataURL(obj.files[0]);
				}
			 }
		}
                                
        
		
	</script>
	<style>
		*{
			box-sizing: border-box;
		}
		.insert_container {
			width: 1080px;
			margin: 0 auto;
		}
		.title {
			width: 500px;
			height: 40px;
			font-size: 16px;
		}
		.productList {
			width: 150px;
			height: 40px;
		}
		.title_line {
			width: 100%;
			margin-bottom: 30px;
		}
		.content_box {
		}
		.content {
			width: 100%;
			height: 500px;
			resize: none;
			font-size: 20px;
		}
		.button_box {
			float: right;
		}
		.button {
			width: 80px;
			height: 40px;
		}
		.img {
			display: inline;
		}
		
		
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<div class="insert_container">
			<h1>Insert Review</h1>
			<form  id="f" action="insertReview.do" method="post" enctype="multipart/form-data">
				<div class="title_line">
					<input type="hidden" name="loginId" value="${loginMember.memberId}">
					<input type="text" class="title" id="title" name="title" placeholder="제목을 입력하세요.">
					<select class="productList" name="productName" id="productList" >
						<option value="">선택</option>
					</select>
					<input class="file_btn" type="file" id="file" name="file" accept=".jpg, .png, .jpeg" onchange="fileCheck(this)">
				</div>
				<div class="content_box">
					<img class="img" src="">
					<textarea class="content" id="content" name="content"  placeholder="내용을 입력하세요."></textarea>
				</div>
				<div class="button_box">
					<input class="button" type="button" value="등록" id="insert_btn">
					<input class="button" type="button" value="취소" onclick="location.href='reviewListPage.do'">
				</div>
			</form>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>