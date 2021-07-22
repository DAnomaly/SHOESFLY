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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		
	</script>
	<style>
		*{
			box-sizing: border-box;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section>
		<h3>판매하기</h3>
		<form id="f" method="post">
			<table border="1">
				<tbody>
					<tr>
						<td>판매자</td>
						<td></td>
					</tr>
					<tr>
						<td>구매 상품명</td>
						<td></td>
					</tr>
					<tr>
						<td>판매 가격</td>
						<td></td>
					</tr>
					<tr>
						<td>주소</td>
						<td></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><button>판매 하기</button></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</section>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>