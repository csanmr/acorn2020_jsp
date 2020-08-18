<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
    	//로그아웃 처리하기
    	session.invalidate(); //세션 영역에 저장된 모든 값 삭제하기
    	//Context Path
    	String cPath=request.getContextPath();
    	//리다이렉트 응답
    	response.sendRedirect(cPath+"/index.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/delete.jsp</title>
</head>
<body>
	<script>
		alert("로그아웃 했습니다");
		location.href="../index.jsp";
	</script>
</body>
</html>