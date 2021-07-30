$(document).ready(function(){
	sizeSelect();
	applicationInfoPopUp();
	buyApplication();
	sellApplication();
	buyNow();
	sellNow();
});

function sizeSelect(){
	$('#productSize').change(function(){
		var option = $("#productSize").val();
		//사이즈 선택 안했을 때
		if(option == ""){
			$('#fastDeal').css("display", "none");
			$('#buyNow').html('즉시구매가<br>(사이즈를 선택하세요.)');
			$('#sellNow').html('즉시판매가<br>(사이즈를 선택하세요.)');
			$('#buyNow').attr('disabled', 'false');
			$('#sellNow').attr('disabled', 'false');
		}
		//사이즈가 선택 했을 때
		else if(option != ""){
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
}

//구매신청 판매신청 팝업
function applicationInfoPopUp(){
	$('#icon').click(function(){
		window.open('applicationInfoPopUp.do', '빠른거래하기 소개', 'width=800, height=450, left=500, top=200');
	});	
}

//구매신청하기 클릭
function buyApplication(){
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
}

//구매신청하기 클릭
function sellApplication(){
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
}

//즉시구매가 클릭
function buyNow(){
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
}

//즉시판매가 클릭
function sellNow(){
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
}