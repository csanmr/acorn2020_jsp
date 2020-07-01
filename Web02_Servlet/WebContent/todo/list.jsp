<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	List<String> list=new ArrayList<>();
	list.add("html 공부하기");
	list.add("css 공부하기");
	list.add("javascript 공부하기");
	
%>
</body>
<h1>오늘 할 일</h1>
<%for(int i=0; i<list.size(); i++) { %>
<ul>
	<li><%out.print(list.get(i)); %></li>
</ul>
<%} %>
<%for(String tmp:list){ %>
	<li><%=tmp %></li>
<% }%>
</html>