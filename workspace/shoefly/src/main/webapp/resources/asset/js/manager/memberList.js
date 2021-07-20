/**
 * @see WEB-INF/views/manager/memberList.jsp
 */
$(document).ready(function(){
	pageLoadEvent();
	$('#column').change(function(){
		if($('#column').val() == 'REGDATE'){
			$('#default_search').hide();
			$('#regdate_search').show();
		} else {
			$('#default_search').show();
			$('#regdate_search').hide();
		}
	})
});
var page = 1;
var order = 'MEMBER_NO';
var isDesc = true;
function pageLoadEvent() {
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
			if (data.page.beginPage == 1) 
				member_paging.append('<a>&lt;</a>');
			else 
				member_paging.append('<a onclick="setPage(' + (data.page.beginPage - 1) + ')">&lt;</a>');
			for (var i = data.page.beginPage; i <= data.page.endPage; i++) {
				if(i == data.page.page)
					member_paging.append('<a>' + i + '</a>');
				else
					member_paging.append('<a onclick="setPage(' + i + ')">' + i + '</a>');
			}
			if (data.page.endPage == data.page.totalPage)
				member_paging.append('<a>&gt;</a>');
			else
				member_paging.append('<a onclick="setPage(' + (data.page.beginPage + 1) + ')">&gt;</a>');
		}
	})
}
function search_btn() {
	page = 1;
	pageLoadEvent();
}
function setOrder(state) {
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