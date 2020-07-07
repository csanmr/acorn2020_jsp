<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 할일을 삭제 해야 하는데 몇번글을 삭제 하지???
	
	//1. GET 방식 파라미터로 전달되는 삭제할 글번호를 읽어와서 숫자로 바꿔준다.
	//delete.jsp?num=x
	int num=Integer.parseInt(request.getParameter("num"));	
    //2. MemberDao객체를 이용해서 삭제한다.
    MemberDao.getInstance().delete(num);
    //3. 응답한다.
    //리다이렉트 이동시키기 위해 context path를 먼저 읽어온다.
    String cPath=request.getContextPath();
  //회원목록보기 요청을 하도록 강요한다.(리다이렉트 이동 시키기)
    response.sendRedirect(cPath+"/member/list.jsp");
  
  //위의 것을 작성하면 아래 코딩한 내용이 실행되지 않고 바로 삭제
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("삭제 했습니다.");
		//javascript 를 이용해서 클라이언트에게 특정 경로로 요청을 다시 하도록 강요하기=redirect move라고 함
		location.href="list.jsp";
	</script>
</body>
</html>