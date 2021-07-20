/**
 * @see WEB-INF/views/manager/productList.jsp
 */
$(document).ready(function(){
	search();
})

function search() {
	$('#tbody').empty();
	$('#tfoot').empty();
	$.ajax({
		url: 'selectListProduct.do',
		type: 'GET',
		data: $('#f').serialize(),
		dataType: 'json',
		success: function(data){
			if(data.result){
				
				var list = data.list;
				$.each(list,function(index, product){
					var tr = $('<tr>').appendTo('#tbody');
					$('<td>').text(product.productNo).appendTo(tr);
					$('<td>').append($('<a>').text(product.productName).attr('href','productInfoPage.do?no=' + product.productNo)).appendTo(tr);
					$('<td>').text(product.brand).appendTo(tr);
					$('<td>').text(product.price).appendTo(tr);
					$('<td>').append($('<span>').attr('onclick','show_img(\'' + product.image + '\');').html('<i class="fas fa-image"></i>')).appendTo(tr);
					if(product.state == 0)
						$('<td style="color:blue;">').text('거래중').appendTo(tr);
					else
						$('<td style="color:red;">').text('정지').appendTo(tr);
				});
				
				var page = data.page;
				var td = $('<td colspan="6">').appendTo($('<tr>').appendTo('#tfoot'));
				if(page.beginPage == 1)
					$('<span>').html('&lt;').appendTo(td);
				else
					$('<span>').html('&lt;').attr('onclick','setPage(' + (page.beginPage - 1) + ')').appendTo(td);
				for (var i = page.beginPage; i <= page.endPage; i++) {
					if(i == page.page) {
						$('<span>').text(i).appendTo(td);
					} else {
						$('<span>').text(i).attr('onclick','setPage(' + i + ')').appendTo(td);
					}
				}
				if(page.endPage == page.totalPage)
					$('<span>').html('&gt;').appendTo(td);
				else
					$('<span>').html('&gt;').attr('onclick','setPage(' + (page.endPage + 1) + ')').appendTo(td);
				
			} else {
				$('<td colspan="6">').text('검색된 상품이 없습니다.').appendTo(tr);
			}
		}
	})
}

function setOrder(data) {
	var order = $('#order');
	var isDesc = $('#isDesc');
	if(order.val() == data){
		if(isDesc.val() == 'DESC')
			isDesc.val('ASC');
		else
			isDesc.val('DESC');
		search();
	} else {
		order.val(data);
		isDesc.val('ASC');
		search();
	}
}

function setPage(data) {
	$('#page').val(data);
	search();
}

function show_img(data) {
	window.open("/shoefly/resources/archive/product/" + data,"noticeInfo");
}
