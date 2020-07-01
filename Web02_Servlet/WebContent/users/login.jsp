<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//폼 전송되는 아이디와 비밀번호를 읽어온다
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/send.jsp</title>
<link rel="stylesheet" href="/Web02_Servlet/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<%if(id.equals("gura")&&pwd.equals("1234")){ %>
		<p class="alert alert-success"><%=id %>님이 로그인 되었습니다. jsp</p>
	<%}else{ %>
		<p class="alert alert-danger">아이디 혹은 비밀번호가 틀려요.</p>
	<%} %>
</div>
</body>
</html>