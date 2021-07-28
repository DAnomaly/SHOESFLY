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
	<title>상품상세페이지</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	$(document).ready(function(){
		
		$('#productSize').change(function(){
			//사이즈가 선택되면
			if(this.value != ""){
				var productSize = $(this).find(":selected").val();
				var productName = $('#productName').val();
				//제품명과 사이즈를 통해 즉시구매가, 즉시판매가 조회
				//조회 후 등록된 상품이 없을 경우 즉시구매가, 즉시판매가는 클릭 불가
				//조회 후 즉시 거래 해도 되고 그 아래에 빠른거래를 위한 신청서 작성 버튼 띄우기
				$.ajax({
					url:'selectPriceBySize.do',
					type: 'get',
					data : 'productSize=' + productSize + '&productName=' + productName,
					dataType: 'json',
					success : function(resultMap){
						if (resultMap.buyPrice != null){
							$('#buyNow').html('즉시구매가<br>' + resultMap.buyPrice + "원");
							$('#buyNow').removeAttr('disabled');
							$('#fastDeal').show();
						}if (resultMap.sellPrice != null){
							$('#sellNow').html('즉시판매가<br>' + resultMap.sellPrice + "원");
							$('#sellNow').removeAttr('disabled');
							$('#fastDeal').show();
						}if (resultMap.buyPrice == null){
							$('#buyNow').html('즉시 구매 상품이<br>존재하지않습니다.');
							$('#buyNow').attr('disabled', 'true');
							$('#fastDeal').show();
						}if (resultMap.sellPrice == null){
							$('#sellNow').html('즉시 판매 상품이<br>존재하지않습니다.');
							$('#sellNow').attr('disabled', 'true');
							$('#fastDeal').show();
						}
					}
				});	//end ajax
				
			}
		});
		//구매신청하기 클릭
		$('#buyApplication').click(function(){
			if($('#loginMember').val() == ""){
				if(confirm('로그인이 필요한 기능입니다. 로그인창으로 이동할까요?')){
					location.href='/shoefly/member/loginPage.do';
					return false;
				}else{
					return false;
				}
			} else{
				$('#f').serialize();
				$('#f').attr('action','buyApplication.do?');		
			}
		});
		//판매신청하기 클릭
		$('#sellApplication').click(function(){
			if($('#loginMember').val() == ""){
				if(confirm('로그인이 필요한 기능입니다. 로그인창으로 이동할까요?')){
					location.href='/shoefly/member/loginPage.do';
					return false;
				}else{
					return false;
				}
			}else{
				$('#f').serialize();
				$('#f').attr('action','sellApplication.do?');
			}
		});
		//즉시구매가 클릭
		$('#buyNow').click(function(){
			if($('#productSize').val() == ""){
				alert('사이즈를 선택하세요.');
				return false;
			} else if($('#loginMember').val() == ""){
				if(confirm('로그인이 필요한 기능입니다. 로그인창으로 이동할까요?')){
					location.href='/shoefly/member/loginPage.do';
					return false;
				}else{
					return false;
				}
			} else{
				$('#f').serialize();
				$('#f').attr('action', 'buyNow.do');
			}
		});
		//즉시판매가 클릭
		$('#sellNow').click(function(){
			if($('#productSize').val() == ""){
				alert('사이즈를 선택하세요.');
				return false;
			} else if($('#loginMember').val() == ""){
				if(confirm('로그인이 필요한 기능입니다. 로그인창으로 이동할까요?')){
					location.href='/shoefly/member/loginPage.do';
					return false;
				}else{
					return false;
				}
			}else{
				$('#f').serialize();
				$('#f').attr('action', 'sellNow.do');
			}
		});
	});
	
	</script>
	<style>
		*{
			box-sizing: border-box;
		}
		.container{
			margin: auto;
			width: 1080px;
		}
		.product_container{
			width: 100%;
			display: flex;
			margin: auto;
		}
		.showList{
			display: inline-block;
			margin-top: 20px;
			text-align: center;
			font-weight: border;
			width: 100px;
			height: 35px;
			line-height: 35px;
			text-decoration: none;
			color: black;
			border: none;
			background-color: lightgrey;
		}
		.imgBox{
			width: 50%;
			margin-left: 10px;
			margin-top: 10px;
		}
		.imgBox img{
			width: 100%;
		}
		.textBox{
			width: 50%;
			margin-top: 50px;
		}
		h3, p, .fastDeal{
			width: 100%;
			text-align: center;
		}
		strong, ul{
			margin-left: 100px;
		}
		.applicationBtn{
			display: inline;
		}
		.btn{
			width: 150px;
			height: 50px;
			border: none;
			border-radius: 5px;
			padding: 10px;
		}
		.btn:hover {
			cursor: pointer;
		}
		#buyNow{
			background-color: #D5C2EE;
		}
		#sellNow{
			background-color: #FFBEBE;
		}
		.fastBuySell{
			margin: 10px 0;
		}
		#buyApplication{
			border: 1px solid #D5C2EE;
			background-clip: white;
		}
		#sellApplication{
			border: 1px solid #FFBEBE;
			background-clip: white;
		}
		.ulTitle{
			margin-top: 30px;
			text-align: center;
		}
		ul{
			text-align: left;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
	<div class="container">
		<a href="productListPage.do" class="showList">목록보기</a>
		<form id="f" method="post">
		<input type="hidden" id="loginMember" value="${loginMember}">
		<input type="hidden" id="productNo" value="${productproductNo}">
			<div class="product_container">
				<c:if test="${empty product}">제품이 없습니다.</c:if>
				<c:if test="${not empty product}">
					<div class="imgBox">
						<img alt="${product.image}"src="/shoefly/resources/archive/product/${product.image}" /><br>
					</div>
					<div class="textBox">
						<div><h3>${product.productName}</h3></div>
						<input type="hidden" name ="productName" id="productName" value="${product.productName}">
						<p>
							사이즈: <select name="productSize" id="productSize">
								<option value="">::::: 선택 :::::</option>
								<option value="240">240mm</option>
								<option value="250">250mm</option>
								<option value="260">260mm</option>
								<option value="270">270mm</option>
								<option value="280">280mm</option>
								<option value="290">290mm</option>
							</select><br>
							<br>
							<button id="buyNow" class="btn">
								즉시구매가<br>(사이즈를 선택하세요.)
							</button>
							<button id="sellNow" class="btn">
								즉시판매가<br>(사이즈를 선택하세요.)
							</button><br><br>
						</p>
						<div id="fastDeal" class="fastDeal" style="display: none">
							빠른거래하기<br>
							<div class="fastBuySell">
								<button id="buyApplication" class="btn">구매신청하기</button>
								<button id="sellApplication" class="btn">판매신청하기</button>
							</div>
						</div>
						<div class="ulTitle">상품정보<br>
							<ul>
								<li>브랜드: ${product.brand}</li>
								<li>모델: ${product.productNo}</li>
								<li>발매가: ${product.price}</li>
							</ul>
						</div>
					</div>
				</c:if>
			</div>
		</form>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>