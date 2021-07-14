<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/manager_header.css">
	<title>SHOEFLY : 관리자</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			pageLoadEvent();
			$('#calumn').change(function(){
				if($('#calumn').val() == 'REGDATE'){
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
				data: 'order=' + order + '&isDesc=' + isDesc + '&calumn=' + $('#calumn').val() + '&query=' + $('#query').val()
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
	</script>
</head>
<body>
	<jsp:include page="/resources/asset/jsp/manager_header.jsp"></jsp:include>
	<section>
		<h3><a href="memberListPage.do">회원관리</a></h3>
		<div class="search">
			<select id="calumn">
				<option value="MEMBER_NO">회원번호</option>
				<option value="MEMBER_ID">아이디</option>
				<option value="NAME">이름</option>
				<option value="EMAIL">이메일</option>
				<option value="REGDATE">가입일</option>
			</select>
			<div class="default_search">
				<input type="text" id="query"/>
				<button type="button" onclick="search_btn()"><i class="fas fa-search"></i></button>
			</div>
			<div class="regdate_search">
				<input type="date" id="startDate"/>
				<input type="date" id="endDate"/>
				<button type="button" onclick="search_btn()"><i class="fas fa-search"></i></button>
			</div>
		</div>
		<div class="member_table">
			<table>
				<thead>
					<tr>
						<th onclick="setOrder('MEMBER_NO');">회원번호</th>
						<th onclick="setOrder('MEMBER_ID');">아이디</th>
						<th onclick="setOrder('NAME');">이름</th>
						<th onclick="setOrder('EMAIL');">이메일</th>
						<th onclick="setOrder('REGDATE');">가입일</th>
						<th onclick="setOrder('STATE');">가입/탈퇴</th>
					</tr>
				</thead>
				<tbody id="member_tbody"></tbody>
			</table>
		</div>
		<div id="member_paging"></div>
	</section>
</body>
</html>