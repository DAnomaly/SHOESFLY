<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/manager_header.css">
	<title>${member.memberId}</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script type="text/javascript">
		function show_address() {
			location.href="memberAddressPage.do?memberNo=" + $('#memberNo').val();
		}
		function del_btn() {
			if(confirm('정말 해당 회원의 이용/탈퇴 정보를 변경하시겠습니까?')){
				$.ajax({
					url: 'deleteMember.do',
					type: 'GET',
					data: 'memberNo=' + $('#memberNo').val() + "&state=" + $('#state').val(), 
					dataType: 'json',
					success: function(data) {
						opener.parent.location.reload();
						location.reload();
					}
				})
			}
		}
	</script>
</head>
<body>
	<input type="hidden" id="memberNo" value="${member.memberNo}"/>
	<input type="hidden" id="state" value="${member.state}"/>
	<h3>회원 상세 정보</h3>
	<table>
		<tbody>
			<tr>
				<th>회원번호</th>
				<td>${member.memberNo}</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${member.memberId}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${member.name}</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${member.email}</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${member.regdate}</td>
			</tr>
			<tr>
				<th>이용/탈퇴</th>
			<c:if test="${member.state - 0 < 0}">
				<td>탈퇴</td>
			</c:if>
			<c:if test="${member.state - 0 >= 0}">
				<td>이용</td>
			</c:if>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="button" value="주소록 확인" onclick="show_address();">
					<input type="button" value="비밀번호 변경" onclick="change_pw_btn();">
					<input type="button" value="이용/탈퇴 변경" onclick="del_btn();">
				</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>