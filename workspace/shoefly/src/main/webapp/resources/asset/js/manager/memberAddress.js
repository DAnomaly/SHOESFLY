/**
 * @see WEB-INF/views/manager/memberAddress.jsp
 */
$(document).ready(function(){
	fn_findAddress();
	fn_updateAddress();
})

function select_change(obj) {
	var addr_id = '#addr_' + $(obj).val();
	$('.addr_div').hide();
	$(addr_id).show();
}