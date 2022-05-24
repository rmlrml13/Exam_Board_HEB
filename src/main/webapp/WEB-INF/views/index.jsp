<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample Project 대문</title>
<link rel="stylesheet" href="${path}/resources/css/mine.css">
</head>
<body>

	<c:if test="${not empty sessionScope.m_id}">
		${sessionScope.m_id} 님 환영합니다.
		<a href="logOut">로그아웃</a>
		<h2>회원목록보기</h2>
		<a href="/memberList">회원보러가기</a>
		<br>
		<h2>글목록보기</h2>
		<a href="/boardList">글목록보기</a>
		<br>
	</c:if>

	<c:if test="${empty sessionScope.m_id}">
		<h2>회원가입</h2>
		<a href="/memberInsert">회원등록하기</a>
		<br>
		<h2>로그인</h2>
		<form action="/login" method="post">
			아이디 : <input type="text" name="m_id"> <br> 비밀번호 : <input
				type="password" name="m_pw"> <br> <input type="submit"
				value="로그인">
		</form>
	</c:if>
	<script type="text/javascript">
		<c:if test="${msg==false}">
		alert('로그인 실패');
		</c:if>
	</script>
</body>
</html>