<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<%
	//textarea에 입력한 정보를 읽어온다. 개행기호(\n)도 있을 수 있다.
	String content=request.getParameter("content");
	//sample data(DB에서 불러온 데이터라고 가정)를 request영역에 담아준다.
	request.setAttribute("content", content);
	//페이지 영역에 newLine이라는 키값으로 개행기호 담기
	//아래의 c:set으로 설정해서 없어도 가능
	pageContext.setAttribute("newLine", "\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/jstl_test6.jsp</title>
</head>
<body>
<h1>jstl 함수 사용해보기</h1>
<c:set var="newLine" value="\n"/>
<p>${fn:replace(content, newLine, '<br />') }</p>
</body>
</html>