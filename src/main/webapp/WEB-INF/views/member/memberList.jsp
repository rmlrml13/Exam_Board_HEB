<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>

	<h1>회원정보</h1>
	<table border="1">
		<tr>
			<td>회원번호</td>
			<td>회원아이디</td>
			<td>회원비밀번호</td>
			<td>회원주소</td>
			<td>회원등록일</td>
		</tr>
		
		<c:forEach var="list" items="${list}">
		
		<tr>
			<td>${list.m_no}</td>
			<td><a href="/memberRead?m_no=${list.m_no}">${list.m_id}</a></td>
			<td>${list.m_pw}</td>
			<td>${list.m_address}</td>
			<td><fmt:formatDate value="${list.m_regDate}" pattern="yyyy-MM-dd HH:mm"/></td>
			<td><a href="/memberDelete?m_no=${list.m_no}">삭제</a></td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>