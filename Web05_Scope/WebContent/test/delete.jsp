<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	session.removeAttribute("nick");
    	session.invalidate(); //세션 영역에 저장된 모든 값 삭제하기
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/delete.jsp</title>
</head>
<body>
	<script>
		alert("닉네임을 삭제 했습니다");
		location.href="../index.jsp";
	</script>
</body>
</html>