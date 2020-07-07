<%@page import="test.board.dto.BoardDto"%>
<%@page import="test.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식 파라미터로 전달되는 삭제할 글번호를 읽어와서 숫자로 바꿔준다.
	//updateform.jsp?num=x
	int num=Integer.parseInt(request.getParameter("num"));	
    //2. BoardDao객체를 이용해서 수정할 글 정보를 얻어온다.
    BoardDao dao=BoardDao.getInstance();
    BoardDto dto=dao.getData(num);
    //3. 읽어온 회원한명의 정보를 form에 출력해서 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/updateform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
	<h1>글 수정 폼입니다.</h1>
	<form action="update.jsp" method="post">
		<input type="hidden" name="num" value="<%=dto.getNum()%>" />
		<label for="num">번호</label>
		<input type="text" id="num" value="<%=dto.getNum()%>" disabled/><br />
		<label for="writer">작성자</label>
		<input type="text" id="writer" name="writer" value="<%=dto.getWriter()%>"/><br />
		<label for="title">제목</label>
		<input type="text" id="title" name="title" value="<%=dto.getTitle() %>" /><br />
		<label for="content">내용</label><br />
		<textarea name="content" id="content" cols="20" rows="5"><%=dto.getContent() %></textarea>
		<br />
		<button type="submit">수정확인</button>
		<button type="reset">취소</button>
	</form>
</body>
</html>