<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/shoefly/resources/asset/css/common/manager_header.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script type="text/javascript">
		function select_change(obj) {
			var addr_id = '#addr_' + $(obj).val();
			$('.addr_form').hide();
			$(addr_id).show();
		}
		function del_btn(no) {
			if(confirm('정말로 삭제하시겠습니까?')){
				location.href='deleteMemberAddress.do?no=' + no + '&memberNo=' + $('#memberNo').val();
			}
		}
	</script>
</head>
<body>
	<input type="hidden" id="memberNo" value="${param.memberNo}"/>
	<div>
		<span>주소이름:</span>
		<select id="" onchange="select_change(this);">
			<option value="">선택</option>			
		<c:forEach items="${list}" var="address">
			<option value="${address.memberAddressNo}">${address.name}</option>
		</c:forEach>
			<option value="add">추가</option>
		</select>
	</div>
	<c:forEach items="${list}" var="address">
	<form id="addr_${address.memberAddressNo}" class="addr_form" onsubmit="fn_submit(this);" action="updateMemberAddress.do" method="post" style="display: none;">
		<input type="hidden" name="memberNo" value="${param.memberNo}"/>
		<input type="hidden" name="no" value="${address.memberAddressNo}"/>
		<span>주소명</span>
		<input type="text" class="no_blank" name="name" value="${address.name}"/><br>
		<span>주소</span>
		<input type="text" class="no_blank" name="addr1" value="${address.addr1}"/><br>
		<span>상세주소</span>
		<input type="text" name="addr2" value="${address.addr2}"/><br>
		<div>
			<input type="button" value="삭제하기" onclick="del_btn(${address.memberAddressNo});"/>
			<input type="submit" value="수정하기"/>
		</div>
	</form>
	</c:forEach>
	<form id="addr_add" class="addr_form" onsubmit="fn_submit(this);" action="updateMemberAddress.do" method="post" style="display: none;">
		<input type="hidden" name="memberNo" value="${param.memberNo}"/>
		<input type="hidden" name="no" value="0"/>
		<span>주소명</span>
		<input type="text" class="no_blank" name="name" value="${address.name}"/><br>
		<span>주소</span>
		<input type="text" class="no_blank" name="addr1" value="${address.addr1}"/><br>
		<span>상세주소</span>
		<input type="text" name="addr2" value="${address.addr2}"/><br>
		<div>
			<input type="submit" value="추가하기"/>
		</div>
	</form>
</body>
</html>