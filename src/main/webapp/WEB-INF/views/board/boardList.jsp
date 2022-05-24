<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>글 목록보기</h2>
	<table border="1">
		<tr>
			<td>글 번호</td>
			<td>글 제목</td>
			<td>작성자</td>
			<td>등록일</td>
		</tr>
		
		<c:forEach var="list" items="${list}">
		<tr>
			<td>${list.b_no}</td>
			<td> <a href="boardRead?b_no=${list.b_no}"> ${list.b_title}</a></td>
			<td>${list.b_writer}</td>
			<td>${list.b_regDate}</td>
		</tr>
		</c:forEach>
	</table>
	<a href="boardInsert">글 등록하기</a>
</body>
</html>