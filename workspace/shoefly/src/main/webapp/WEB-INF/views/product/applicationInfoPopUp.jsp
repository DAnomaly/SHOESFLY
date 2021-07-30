<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/shoefly/resources/asset/css/product/applicationInfoPopUp.css">
	<title>빠른거래하기 소개</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="/shoefly/resources/asset/js/product/applicationInfoPopUp.js" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
	<section>
		<div class="container">
			<div class="title">빠른구매를 위한 신청서 작성 TIP</div>
			<div class="example">
				<p>신청서 작성을 통해 즉시구매, 즉시 판매 가격에 나타나게 됩니다. 아래 예시를 참고해주세요.</p>
				<ul class="mainUl">
					<li><b>EX) 구매신청하기</b>
						<ul class="subUl">
							<li>구매신청하기 페이지에서 <b>[구매희망가격]</b>을 입력합니다.</li>
							<li><label class="warning"><b>TIP!&nbsp;</b></label><b>[현재 최고 구매희망가]</b> 보다 높은 값을 입력해야 다른유저들에게 즉시 판매가로 조회되어 구매에 유리합니다.</li>
							<li>판매자와 매칭이되면 구매신청시 선택한 주소로 상품이 발송됩니다.</li>
						</ul>
					</li>
					<li><b>EX) 판매신청하기</b>
						<ul class="subUl">
							<li>판매신청하기 페이지에서 <b>[판매희망가격]</b>을 입력합니다.</li>
							<li><label class="warning"><b>TIP!&nbsp;</b></label><b>[현재 최저 판매희망가]</b> 보다 낮은 값을 입력해야 다른유저들에게 즉시 구매가로 조회되어 판매에 유리</li>
							<li>판매신청을 하고 SHOFLY로 신발을 보내주셔야만 검수가 완료 후 즉시판매가로 조회 됩니다.</li>
							<li>검수 후 불량 혹은 가품일 경우 판매신청시 선택한 주소로 상품이 반송됩니다.</li>
						</ul>
					</li>
				</ul>
				<div class="warning">&#8251;본인이 작성한 구매희망신청서와 판매희망신청서는 본인에게 조회되지 않습니다.&#8251;</div>
			</div>
		</div>
		<div class="closeBtn"><i class="fas fa-window-close"></i></div>
	</section>
</body>
</html>