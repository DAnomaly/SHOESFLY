$(document).ready(function(){
	selectCondition();

	//전체클릭시 모두 선택, 모두해제
	$('#AllBrand').click(function(){
		if($("#AllBrand").prop("checked")) { 
			$(".brand").prop("checked",true);
		} else if(!$("#AllBrand").prop("checked")) {
			$(".brand").prop("checked",false);
		} 
	});
	//개별체크클릭시 전체체크, 전체해지
	$('.brand').click(function(){
		if($("input[name='brand']:checked").length == 4){
			$("#AllBrand").prop("checked", true);
		}else{
			$("#AllBrand").prop("checked", false);
		}
	});
});

//검색버튼으로 모든 선택사항 조회
function selectCondition(){
	var reg = /[0-9]+$/;
	$('#search_btn').click(function(){
		if (!reg.test($('.input_price').val()) && $('.input_price').val() != '') {
			alert('가격은 숫자만 입력 가능합니다.');
			return false;
		}
		$('#f').attr('action', 'selectCondition.do');
		$('#f').submit();
	});
}