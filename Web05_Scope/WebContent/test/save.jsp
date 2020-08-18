<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //클라이언트가 폼 전송한 내용을 읽어온다.
    request.setCharacterEncoding("utf-8");
    String nick=request.getParameter("nick");
    //HttpSession객체에 담는다.(session 영역에 담는다.)
    session.setAttribute("nick", nick);
    //60초 동안 새로운 요청을 하지 않았을 때 삭제 되도록 설정
    session.setMaxInactiveInterval(60); //초 단위로 설정한다.(60*60이면 1시간)
    /*
    	session영역에 담은 데이터 삭제되는 경우
    	-새로운 요청을 하지않고 30분이 경과했을 때(default)
    	-웹브라우저를 닫았을 때
    	-HttpSession객체의 메소드를 이용해서 제거했을 때
    */
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/save.jsp</title>
</head>
<body>
	<p> <strong><%=nick %></strong>이라는 닉네임을 기억 하겠습니다. </p>
	<p>60초 동안 아무런 요청도 하지 않으면 삭제됩니다.</p>
	<a href="../index.jsp">인덱스로 이동하기</a>
</body>
</html>