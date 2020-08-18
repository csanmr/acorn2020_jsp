<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//request영역에 "dto"라는 키 값으로 담긴 MemberDto객체의 참조값 얻어내기
    	MemberDto dto=(MemberDto)request.getAttribute("dto");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/member.jsp</title>
</head>
<body>
	<h1>회원의 정보</h1>
	<p>번호 : <strong><%=dto.getNum() %></strong> </p>
	<p>이름 : <strong><%=dto.getName() %></strong> </p>
	<p>주소 : <strong><%=dto.getAddr() %></strong> </p>
</body>
</html>