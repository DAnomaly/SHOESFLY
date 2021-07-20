/**
 * @see WEB-INF/views/manager/faqList.jsp
 */
$(document).ready(function(){
	$('#column').change(function(){
		if($('#column').val() == 'POSTDATE'){
			$('#default_search').hide();
			$('#date_search').show();
		} else {
			$('#default_search').show();
			$('#date_search').hide();
		}
	})
});

function fn_show(no) {
	if(no == null) {
		no = '';
	}
	window.open("faqInfoPage.do?no=" + no,"noticeInfo","width=720,height=600");
}