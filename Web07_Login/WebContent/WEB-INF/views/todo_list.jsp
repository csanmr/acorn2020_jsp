<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/todo_list.jsp</title>
</head>
<body>
<h1>할 일 목록입니다.</h1>
<c:forEach var="tmp" items="${requestScope.todoList }">
	<li>${tmp }</li>
</c:forEach>
</body>
</html>