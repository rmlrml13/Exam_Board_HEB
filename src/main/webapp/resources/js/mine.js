$(function(){
	showCommentList();
});

function showCommentList(){

	var b_no = $('#b_no').val();
	
	
	$.ajax({
		url: "/commentList",
		type: "post",
		data: {b_no : b_no},
		success: function(data){
			var result ="<br> 댓글 목록";
			$(data).each(function(){
				result += "<p> 작성자 : " + this.c_writer + "등록일 : " + this.c_regDate +
			"<br> 글 내용 : " + this.c_content + "<input type='button' value='삭제하기' onclick='commentDelete("+ this.c_no+")'></p>"; 
	
			})	
		$('#commentTable').html(result);
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			alert("통신 실패.")
		}
				
	});
	
}
function commentDelete(c_no){
	$.ajax({
		url: "/commentDelete",
		type: "post",
		data: {c_no : c_no},
		success: function(data){
			
					if(data=="Success"){
						alert('댓글삭제 성공');
						showCommentList();
					}else{
						alert('댓글등록 실패');
					}
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					alert("통신 실패.")
				}
				
				
	})
}


$('#commentInsert').click(function() {
	
	var b_no = $('#b_no').val();
	var c_content = $('#c_content').val();
	var c_writer = $('#c_writer').val();
	
	$.ajax({
		url: "/commentInsert",
		type: "post",
		data: {c_content : c_content,
				c_writer : c_writer,
				b_no : b_no},
		success: function(data){
			
					if(data=="Success"){
						alert('댓글등록 성공');
						$('#c_content').val('');
						showCommentList();
					}else{
						alert('댓글등록 실패');
					}
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					alert("통신 실패.")
				}
				
				
	})
	

	
})
