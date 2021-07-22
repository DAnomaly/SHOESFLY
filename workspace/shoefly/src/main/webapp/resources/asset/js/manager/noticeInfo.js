/**
 * @see WEB-INF/views/manager/noticeInfo.jsp
 */
function preview_btn() {
	$('#preview').html($('#content').val());
	$('.content').toggle();
	$('.preview').toggle();
}
function edit_btn() {
	if($('#title').val() == '') {
		alert('제목을 입력해 주세요.')
		$('#title').focus();
		return;
	}
	if($('#content').val() == '') {
		alert('내용을 입력해 주세요.')
		$('#content').focus();
		return;
	}
	$.ajax({
		url: 'insertNotice.do',
		type: 'POST',
		data: 'noticeNo=' + $('#noticeNo').val() + '&title=' + $('#title').val() + '&content=' + $('#content').val(),
		dataType: 'json',
		success: function(data) {
			console.log("yes");
			console.log(data);
			if (data.result) {
				alert(data.message);
				opener.parent.location.reload();
				window.close();
			}
		}
	})
}
function del_btn() {
	if(!confirm('정말로 삭제하겠습니까?\n (복구가 되지 않습니다)')){
		return;
	}
	$.ajax({
		url: 'deleteNotice.do',
		type: 'POST',
		data: 'noticeNo=' + $('#noticeNo').val(),
		dataType: 'json',
		success: function(data) {
			console.log("yes");
			console.log(data);
			if (data.result) {
				alert(data.message);
				opener.parent.location.reload();
				window.close();
			}
		}
	})
}