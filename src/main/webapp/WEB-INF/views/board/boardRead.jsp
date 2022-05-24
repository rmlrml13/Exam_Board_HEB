<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/mine.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<h2>글 내용보기</h2>

			글 번호 : ${dto.b_no} <br>
			글 제목 : ${dto.b_title} <br>
			글 내용 : ${dto.b_content} <br>
			작성자 : ${dto.b_writer} <br>
			등록일 : ${dto.b_regDate} <br>

	
	<a href="boardList">목록으로</a>
	<a href="boardUpdate?b_no=${dto.b_no}">글 수정하기</a>
	<a href="boardDelete?b_no=${dto.b_no}">글 삭제하기</a>
	
	
	
	<%-- <c:if test="${sessionScope.m_id == dto.b_writer}">
		
	</c:if> --%>
<%-- <h1>댓글보기</h1>
	
	<input type="hidden" name="b_no" id="b_no" value="${dto.b_no}">
	작성자 : <input type="text" name="c_writer" id="c_writer" value="${dto.b_writer}" readonly="readonly">  
	내용 : <input type="text" name="c_content" id="c_content">
	<input type="button" id="commentInsert" value="작성">

	
	<div id="commentTable">
	

	</div> --%>
<%-- 	<script type="text/javascript" src="${path}/resources/js/mine.js"></script> --%>
</body>
</html>