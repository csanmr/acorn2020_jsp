<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/sub/fortune.jsp</title>
</head>
<body>
<%
	String[] fortunes= {"하나", "두울", "세엣", "네엣", "다섯"};
	Random ran=new Random();
	int rn=ran.nextInt(5);
	String vs=fortunes[rn];
%>

<p>오늘의 운세 : <%=vs %></p>
</body>
</html>