$(document).ready(function(){
	fn_findAddress();
	goBackPage();
	clickRadio();
	checkbox();
	submitCheck();
});

//주소api사용
function fn_findAddress() {
	$('#addr_search_btn').click(function(){
		$('#memberAddressNo').val(0);
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

//뒤로가기
function goBackPage(){
	$('#backBtn').click(function(){
		// location.href='viewProductPage.do?productNo=' + $('#productNo').val();
		history.back();
	});
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
		var priceReg = /[0-9]+$/;
		//희망 판매 가격 미입력과 정규식체크
		if($('#price').val()==""){
			alert('판매 희망 가격을 입력해주세요.');
			$('#price').focus();
			return false;
		}else if(!priceReg.test($('#price').val())){
			alert('숫자만 입력해주세요.');
			$('#price').init();
			$('#price').focus();
			return false;
		}
		//즉시 구매가 보다 높은금액 입력시
		else if($('#price').val() >= $('#lowPrice').val()){
			if(confirm('현재 신청하신 금액으로 즉시 구매하실 수 있습니다. \n즉시 구매하기 페이지로 이동하시겠습니까?')){
				$('#f').attr('action', 'buyNow.do');
				$('#f').serialize();
				$('#f').submit();
				return false;
			}
		} else if($('#addrName').val() == '' || $('#addr1').val() == ''){			
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