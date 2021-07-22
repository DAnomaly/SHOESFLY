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
			checkbox();
			submitCheck();
		});
		
		function submitCheck(){
			$('#sellApplication_btn').click(function(){
				//희망 구매 가격 미입력시
				if($('#price').val()==""){
					alert('판매 희망 가격을 입력해주세요.');
					return false;
				} else if($('#check1').is(":checked") == false){
					alert("필수 이용약관을 읽고 동의해주세요.");
					return false;
				}  else if($('#check2').is(":checked") == false){
					alert("필수 이용약관을 읽고 동의해주세요.");
					return false;
				}
				
			});
		}
			
		function checkbox() {
			//전체동의 클릭, 해제
			$('#check0').click(function(){
				if($("#check0").prop("checked")) { 
					$(".check").prop("checked",true);
				} else if(!$("#check0").prop("checked")) {
					$(".check").prop("checked",false);
				} 
			});
			//개별체크클릭시 전체체크, 전체해지
			$('.check').click(function(){
				if($("input[class='check']:checked").length == 2){
		            $("#check0").prop("checked", true);
		        }else{
		            $("#check0").prop("checked", false);
		        }
			});
		}
	</script>
	<style>
		*{
			box-sizing: border-box;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<h3>판매 신청서</h3>
		<form id="f" method="post">
			<table border="1">
				<tbody>
					<tr>
						<td colspan="2">
							<img alt="${product.image}"
							src="/shoefly/resources/archive/product/${product.image}" />
						</td>
					</tr>
					<tr>
						<td>판매 신청자 ID</td>
						<td>${loginMember.memberId}</td>
						<input type="hidden" name="memberId" value="${loginMember.memberId}">
					</tr>
					<tr>
						<td>판매 상품명</td>
						<td>${product.productName}</td>
					</tr>
					<tr>
						<td>사이즈</td>
						<td>${param.productSize}mm</td>
					</tr>
					<tr>
						<td>브랜드</td>
						<td>${product.brand}</td>
					</tr>
					<tr>
						<td>판매 희망 가격</td>
						<td><input type="text" name="price" id="price" >원<br>
						현재 최고 판매희망가보다 낮게 입력해야 즉시 구매에 유리합니다.</td>
					</tr>
					<tr>
						<td>현재 최저 판매희망가</td>
						<td>
							<c:if test="${lowPrice eq 0}">
								현재 등록된 상품이 없습니다.
							</c:if>
							<c:if test="${lowPrice ne 0}">
								${lowPrice}원
							</c:if>
						</td>
					</tr>
					<tr>
						<td>정가</td>
						<td>${product.price}원</td>
					</tr>
					<tr>
						<td rowspan="2">반품<br>주소</td>
						<td>
							<c:if test="${empty addressList}">
								저장된 주소가 존재하지 않습니다.
							</c:if>
							<c:if test="${not empty addressList}">
								<c:forEach var="address" items="${addressList}">
									${address.name}<br>
									${address.addr1}<br>
									${address.addr2}<br><br>
								</c:forEach>
							</c:if>
						</td>
					</tr>
					<tr>
						<td>
							<c:if test="${not empty addressList}">
								${address.addr1}<br>
								${address.addr2}<br>
							</c:if>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<label for="check0"><input type="checkbox" class="check0" id="check0">전체 동의</label><br>
							<label for="check1"><input type="checkbox" class="check" id="check1">개인정보 이용약관에 동의합니다.(필수)</label><br>
							<label for="check2"><input type="checkbox" class="check" id="check2">위치정보 이용약관에 동의합니다.(필수)</label>
						</td>
					</tr>	
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><input type="button" value="판매 신청서 작성 완료" id="sellApplication_btn"></td>
					</tr>

				</tfoot>
			</table>
		</form>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>