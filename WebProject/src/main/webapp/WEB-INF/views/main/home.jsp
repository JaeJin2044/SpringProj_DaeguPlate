<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메인 페이지 입니다.</h1>
	
	<c:if test="${loginUser!=null}">
		${loginUser.u_Nm}님 안녕하세요
		<a href="/user/logout">로그아웃</a>
	</c:if>
	
	<c:if test="${loginUser == null}">
		<a href="/user/login">로그인 하러가기</a>
	</c:if>

	
	
	

</body>
</html>