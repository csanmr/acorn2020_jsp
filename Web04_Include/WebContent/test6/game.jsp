<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
<%-- include될 jsp페이지는 반드시 상대경로로 찾아가야한다. --%>
<%-- thisPage라는 파라미터 명으로 game이라는 문자열 전달하기 --%>
<jsp:include page="../include/navbar2.jsp">
	<jsp:param value="game" name="thisPage"/>
</jsp:include>
	<h1>game.jsp 입니다.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis voluptate enim deserunt eveniet voluptatibus atque debitis vitae placeat id saepe voluptas eos nisi iure vel facere possimus cum et sunt.</p>
</body>
</html>