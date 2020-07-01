<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/list</title>
</head>
<body>
	<%
	List<MemberDto> list=new ArrayList<>();
	list.add(new MemberDto(1, "김구라", "노량진"));
	list.add(new MemberDto(1, "해골", "행신동"));
	list.add(new MemberDto(1, "원숭이", "상도동"));
	%>
	<div class="container">
	<table class="table table-dark">
	<tr>
	<th>번호</th>
	<th>이름</th>
	<th>주소</th>
	</tr>	
	<%for(MemberDto tmp:list) { %>
	<tr>
		<td><%=tmp.getNum() %></td>
		<td><%=tmp.getName() %></td>
		<td><%=tmp.getAddr() %></td>
	</tr>
	 <%}%>
	</table>
	</div>

</body>
</html>