<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
    	include 디렉티브를 이용해서 jsp페이지를 include하면 해당 페이지에 include 된 jsp페이지가 합쳐져서
    	jsp페이지가 만들어진다.
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test1/main.jsp</title>
</head>
<body>
<%@include file="header.jsp" %>
<%
	//header.jsp페이지에서 이미 name이라는 지역변수를 전언했기 때문에 오류발생
	//String name="원숭이";
	//위와 같은 이유로 아래에 name도 출력 가능
%>
	<h1>main.jsp 페이지 입니다. <strong><%=name %></strong></h1> 
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus accusantium dolorum aut dicta velit cumque inventore obcaecati odit ducimus similique voluptatum tempora! Facilis fugit deserunt alias maxime non architecto sint.</p>
	<a href="other.jsp">다른 페이지</a>
<%@include file="footer.jsp" %>
</body>
</html>