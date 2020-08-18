<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%
    	request.setAttribute("myName", "김구라");
    
    	String animals="cat_dog_elephant";
    	request.setAttribute("animals", animals);
    	
    	int price=35000;
    	request.setAttribute("price", price);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
</head>
<body>
<p>나의 이름은 <strong>${myName }</strong></p>

<c:forEach var="i" begin="5" end="9">
	<p>${i }</p>
</c:forEach>

<ul>
	<c:forTokens var="tmp" items="${animals }" delims="_">
		<li>${tmp }</li>
	</c:forTokens>
</ul>

<fmt:formatNumber value="${price }" type="currency" currencySymbol="$" />

</body>
</html>