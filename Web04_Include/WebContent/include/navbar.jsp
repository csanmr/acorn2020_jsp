<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- /include/navbar.jsp --%>
<%
	//요청 파라미터 읽어내기
	String thisPage=request.getParameter("thisPage");
%>

<div>
	navbar입니다.<strong><%=thisPage %></strong>에 포함되었음
</div>
<div class="navbar navbar-expand-sm navbar-dark bg-primary">
	<a href="${pageContext.request.contextPath}" class="navbar-brand">Acorn</a>
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/test5/home.jsp">home</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/test5/game.jsp">game</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/test5/study.jsp">study</a></li>
	</ul>
</div>