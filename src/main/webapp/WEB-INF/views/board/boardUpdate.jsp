<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>글 수정하기</h2>
	<form action="/boardUpdate" method="post">
		<input type="hidden" name="b_no" value="${dto.b_no}">
		글 제목 : <input type="text" name="b_title" value="${dto.b_title}"> <br>
		글 내용 : <input type="text" name="b_content" value="${dto.b_content}"> <br>
		작성자 :  <input type="text" name="b_writer" value="${sessionScope.m_id}" readonly="readonly"> <br> 
		<input type="submit" value="수정하기">
	</form>
	
	<a href="/boardList">목록으로</a>
</body>
</html>