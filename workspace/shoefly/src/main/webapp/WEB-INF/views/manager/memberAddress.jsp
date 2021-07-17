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
		$(document).ready(function(){
			fn_findAddress();
			fn_updateAddress();
		})
		
		function select_change(obj) {
			var addr_id = '#addr_' + $(obj).val();
			$('.addr_div').hide();
			$(addr_id).show();
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
		</select>
	</div>
	<div id="addr_" class="addr_div">
		<span>주소명</span>
		<input type="text" class="no_blank" name="name" readonly/><br>
		<span>주소</span>
		<input type="text" class="no_blank" id="addr1" name="addr1" readonly/><br>
		<span>상세주소</span>
		<input type="text" id="addr2" name="addr2" readonly/><br>
	</div>
	<c:forEach items="${list}" var="address">
	<div id="addr_${address.memberAddressNo}" class="addr_div" style="display: none;">
		<span>주소명</span>
		<input type="text" class="no_blank" name="name" value="${address.name}" readonly/><br>
		<span>주소</span>
		<input type="text" class="no_blank" id="addr1" name="addr1" value="${address.addr1}" readonly/><br>
		<span>상세주소</span>
		<input type="text" id="addr2" name="addr2" value="${address.addr2}" readonly/><br>
	</div>
	</c:forEach>
</body>
</html>