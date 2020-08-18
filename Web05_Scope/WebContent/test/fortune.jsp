<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //FortuneServlet에서 "fortuneToday"라는 키값으로 담은 String type얻어오기
    String fortuneToday=(String)request.getAttribute("fortuneToday");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/fortune.jsp</title>
</head>
<body>
	<p>오늘의 운세 : <strong><%=fortuneToday %></strong></p>
</body>
</html>