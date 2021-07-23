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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	$(document).ready(function(){
		fn_findAddress();
		clickRadio();
		checkbox();
		submitCheck();
	});
	
	//주소api사용
	function fn_findAddress() {
		$('#addr_search_btn').click(function(){
			goPopup();
		})
	} 
	function goPopup(){
		var pop = window.open("jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		$('#addr1').val(roadAddrPart1);
		$('#addr2').val(addrDetail);
	}
	
	//저장된 주소 radio 클릭시 주소창에 보여주기
	function clickRadio(){
		$('input:radio[name=addressName]').click(function(){
			$('#addrName').val($('input:radio[name=addressName]:checked').val());
			$('#memberAddressNo').val($(this).next().val());
			$('#addr1').val($(this).next().next().val());
			$('#addr2').val($(this).next().next().next().val());
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
			if($("input[class='check']:checked").length == 3){
	            $("#check0").prop("checked", true);
	        }else{
	            $("#check0").prop("checked", false);
	        }
		});
	}
	function submitCheck(){
		$('#buyApplication_btn').click(function(){
			//희망 판매 가격 미입력시
			if($('#price').val()==""){
				alert('판매 희망 가격을 입력해주세요.');
				$('#price').focus();
				return false;
			}
			//즉시 구매가 보다 높은금액 입력시
			else if($('#price').val() >= $('#lowPrice').val()){
				if(confirm('현재 신청하신 금액으로 즉시 구매하실 수 있습니다. \n즉시 구매하기 페이지로 이동하시겠습니까?')){
					//
					// 즉시 구매로 이동작성해야하는 부분
					// 상품명, 사이즈, 즉시구매가 가져가기
					//
				}
			} else if($('#addrName').val() == '' || $('#addr1').val() == '' || $('#addr2').val() == ''){			
				alert('배송지를 입력해주세요.');
				return false;
			} else if($('#check1').is(":checked") == false || $('#check2').is(":checked") == false){
				alert("필수 이용약관을 읽고 동의해주세요.");
				return false;
			} else{
				//구매신청서 작성
				//배송지테이블에 배송지삽입, 상품구매테이블에 상품삽입
				$('#f').attr('action', 'insertBuyApplication.do');
				$('#f').serialize();
				$('#f').submit();
			}
		});
	}
	</script>
	<style>
		*{
			box-sizing: border-box;
		}
		table{
			border-collapse: collapse;
		}
		.redText{
			color: red;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<h3>구매 신청서</h3>
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
						<td>구매 신청자 ID</td>
						<td>${loginMember.memberId}
						<input type="hidden" name="memberId" value="${loginMember.memberId}"></td>			
					</tr>
					<tr>
						<td>구매 상품명</td>
						<td>${product.productName}
						<input type="hidden" name="productName" value="${product.productName}"></td>
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
						<td>구매 희망 가격</td>
						<td>
							<input type="text" name="price" id="price">원
						</td>
					</tr>
					<tr>
						<td>현재 최고 구매희망가</td>
						<td>
							<c:if test="${highPrice eq 0}">
								현재 등록된 상품이 없습니다.
							</c:if>
							<c:if test="${highPrice ne 0}">
								${highPrice}원
								<input type="hidden" id="highPrice" value="${highPrice}">
							</c:if>
						</td>
					</tr>
					<tr>
						<td>즉시 구매가</td>
						<td>
							<c:if test="${lowPrice eq 0}">
								현재 등록된 상품이 없습니다.
							</c:if>
							<c:if test="${lowPrice ne 0}">
								${lowPrice}원
								<input type="hidden" id="lowPrice" value="${lowPrice}">
							</c:if>
						</td>
					</tr>
					<tr>
						<td>정가</td>
						<td>${product.price}원</td>
					</tr>
					<tr>
						<td rowspan="2">배송지<br>주소</td>
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
							배송지명<br>
							<input type="hidden" id="memberAddressNo" name="memberAddressNo" value="0">
							<input type="text" id="addrName" name="addrName" placeholder="ex&#41; 집, 회사"><br>
							주소<br>
							<input type="text" name="addr1" id="addr1" readonly>
							<input type="button" id="addr_search_btn" value="주소찾기"><br>
							상세주소<br>
							<input type="text" name="addr2" id="addr2" readonly>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<label for="check0"><input type="checkbox" class="check0" id="check0">전체 동의</label><br>
							<label for="check1"><input type="checkbox" class="check" id="check1">
								개인정보 이용약관에 동의
							</label><label for="check1" class="redText">(필수)</label><br>
							<label for="check2"><input type="checkbox" class="check" id="check2">
								위치정보 이용약관에 동의
							</label><label for="check2" class="redText">(필수)</label><br>
							<label for="check3"><input type="checkbox" class="check" id="check3">
								마케팅 수신 동의(선택)
							</label>
						</td>
					</tr>		
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><input type="button" value="구매 신청서 작성 완료" id="buyApplication_btn"></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>