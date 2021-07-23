/**
 * @see WEB-INF/views/manager/memberList.jsp
 */
$(document).ready(function(){
	pageLoadEvent();
});

function column_change() {
	if($('#column').val() == 'REGDATE'){
		$('.default_search').hide();
		$('.regdate_search').show();
	} else {
		$('.default_search').show();
		$('.regdate_search').hide();
	}
}

var page = 1;
var order = 'MEMBER_NO';
var isDesc = true;
function pageLoadEvent() {
	// ORDER STATE UPDATE
	var state_idName = "#" + order + "_STATE";
	$('.up-down').empty();
	if(isDesc)
		$(state_idName).html('<i class="fas fa-caret-down"></i>');
	else
		$(state_idName).html('<i class="fas fa-caret-up"></i>');
	
	
	// MEMBER LIST LOAD
	$.ajax({
		url: 'memberList.do',
		type: 'POST',
		data: 'order=' + order + '&isDesc=' + isDesc + '&column=' + $('#column').val() + '&query=' + $('#query').val()
			+ '&page=' + page + '&startDate=' + $('#startDate').val() + '&endDate=' + $('#endDate').val(),
		dataType: 'json',
		success: function(data) {
			var member_tbody = $('#member_tbody');
			member_tbody.empty();
			if(data.result){
				$.each(data.list, function(index, member) {
					var tr = $('<tr>').appendTo(member_tbody).attr('onclick','show_info(' + member.memberNo + ');');
					$('<td>').text(member.memberNo).appendTo(tr);
					$('<td>').text(member.memberId).appendTo(tr);
					$('<td>').text(member.name).appendTo(tr);
					$('<td>').text(member.email).appendTo(tr);
					$('<td>').text(member.regdate).appendTo(tr);
					if(member.state == 0)
						$('<td>').text('가입').appendTo(tr);
					else
						$('<td>').text('탈퇴').appendTo(tr);
				})
			} else {
				$('<tr>').append('<td colspan="6">검색된 아이디가 없습니다.</td>').appendTo(member_tbody);
			}
			var member_paging = $('#member_paging');
			member_paging.empty();
			if(data.page.page == 1){
				$('<span>').html('<i class="fas fa-caret-left"></i>이전').appendTo(member_paging);
			} else {
				$('<a>').html('<i class="fas fa-caret-left"></i>이전').attr('href','javascript:setPage(' + (data.page.page - 1) + ')').appendTo(member_paging);
			}
			if(data.page.page == data.page.totalPage){
				$('<span>').html('이후<i class="fas fa-caret-right"></i>').appendTo(member_paging);
			} else {
				$('<a>').html('이후<i class="fas fa-caret-right"></i>').attr('href','javascript:setPage(' + (data.page.page + 1) + ')').appendTo(member_paging);
			}
		}
	})
}
function search_btn() {
	page = 1;
	pageLoadEvent();
}
function setOrder(state) {
	page = 1;
	if(order = state){
		isDesc = isDesc ? false : true;
	} else {
		order = state;
		isDesc = true;
	}
	pageLoadEvent();
}
function setPage(p) {
	page = p;
	pageLoadEvent();
}
function show_info(no) {
	window.open("memberInfoPage.do?no=" + no,"noticeInfo","width=600,height=800,top=30,left=80");
}