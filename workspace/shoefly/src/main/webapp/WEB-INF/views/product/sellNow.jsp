<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/header.css">
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/footer.css">
	<link rel="stylesheet" href="/shoefly/resources/asset/css/product/sellNow.css">
	<title>즉시판매</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="/shoefly/resources/asset/js/product/sellNow.js" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
	<div class="container">
		<a id = "backBtn"><i class="fas fa-angle-double-left"></i>&nbsp;뒤로가기</a>
		<h3>판매폼 작성</h3>
		<form id="f" method="post">
			<table border="1">
				<tbody>
					<tr class="firstTr">
						<td rowspan="9">
							<img alt="${product.image}"
							src="/shoefly/resources/archive/product/${product.image}" />
						</td>
					</tr>
					<tr>
						<td>판매 신청자 ID</td>
						<td>${loginMember.memberId}
						<input type="hidden" name="memberId" value="${loginMember.memberId}"></td>			
					</tr>
					<tr>
						<td>판매 상품명</td>
						<td>${product.productName}
						<input type="hidden" id="productName" name="productName" value="${product.productName}"></td>
					</tr>
					<tr>
						<td>사이즈</td>
						<td>${param.productSize}mm
						<input type="hidden" name="productSize" value="${param.productSize}"></td>
					</tr>
					<tr>
						<td>브랜드</td>
						<td>${product.brand}</td>
					</tr>
					<tr>
						<td>판매수익</td>
						<td>${highPrice}원
						<input type="hidden" name="price" value="${highPrice}"></td>
					</tr>

					<tr>
						<td rowspan="2">반송지<br>주소</td>
						<td>
							<c:if test="${empty addressList}">
								저장된 주소가 존재하지 않습니다.<br>
								직접 입력해주세요.
							</c:if>
							<c:if test="${not empty addressList}">
								저장된 주소에서 선택 가능합니다.<br>
								<c:forEach var="address" items="${addressList}">
									<input type="radio" name="addressName" value="${address.name}">${address.name}
									<input type="hidden" value="${address.memberAddressNo}">
									<input type="hidden" value="${address.addr1}">
									<input type="hidden" value="${address.addr2}">
								</c:forEach>
							</c:if>
						</td>
					</tr>
					<tr>
						<td>
							반송지명<br>
							<input type="hidden" id="memberAddressNo" name="memberAddressNo" value="0">
							<input type="text" id="addrName" name="addrName" placeholder="ex&#41; 집, 회사"><br>
							주소<br>
							<input type="text" name="addr1" id="addr1" readonly>
							<input type="button" id="addr_search_btn" class="addr_search_btn" value="주소찾기"><br>
							상세주소<br>
							<input type="text" name="addr2" id="addr2" readonly>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="checkbox" class="check0" id="check0"><label for="check0"> 전체 동의</label><br>
							<input type="checkbox" class="check" id="check1">
							<label for="check1"> 개인정보 이용약관에 동의</label>
							<label for="check1" class="redText">(필수)</label><br>
							<input type="checkbox" class="check" id="check2">
							<label for="check2"> 위치정보 이용약관에 동의</label>
							<label for="check2" class="redText">(필수)</label><br>
							<input type="checkbox" class="check" id="check3">
							<label for="check3"> 마케팅 수신 동의(선택)</label>
						</td>
					</tr>		
				</tbody>
			</table>
		</form>
		<input type="hidden" id ="productNo" value="${product.productNo}">
		<input type="button" value="판매하기" id="sellNow_btn" class="sellNow_btn">
	</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>