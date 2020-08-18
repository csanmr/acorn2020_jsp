<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
<%
	//id라는 키값으로 세션에 저장된 문자열이 있는지 읽어와 본다.
	String id=(String)session.getAttribute("id");
%>
<div class="container">
<c:if test="${not empty id }">
	<p>
		<a href="users/private/info.jsp">${id }</a>님 로그인 중
		<a href="users/logout.jsp">로그아웃</a>
	</p>
</c:if>

<%if(id!=null){ %>
	<p>
		<a href="users/private/info.jsp"><%=id %></a>님 로그인 중
		<a href="users/logout.jsp">로그아웃</a>
	</p>
<%} %>
	<h1>인덱스 페이지 입니다.</h1>
	<ul>
		<li><a href="users/signup_form.jsp">회원가입</a></li>
		<li><a href="users/loginform.jsp">로그인</a></li>
		<li><a href="test/buy.jsp?code=111">111번 상품 구입 테스트</a></li>
		<li><a href="ajax/test01.jsp">Ajax테스트1</a></li>
		<li><a href="ajax/test02.jsp">Ajax테스트2</a></li>
		<li><a href="ajax/test03.jsp">Ajax테스트3</a></li>
		<li><a href="file/list.jsp">자료실 목록 보기</a></li>
		<li><a href="gallery/test.jsp">이미지 업로드 테스트</a></li>
		<li><a href="gallery/test2.jsp">ajax 이미지 업로드 테스트</a></li>
		<li><a href="gallery/list.jsp">이미지 갤러리</a></li>
		<li><a href="test/editor.jsp">SmartEditor 테스트</a></li>
		<li><a href="cafe/list.jsp">카페</a></li>
		<li><a href="test/scroll.jsp">스크롤 연습</a></li>
		
		<li><a href="test/cookie_form.jsp">쿠키 test1</a></li>
		<li><a href="test/cookie_form2.jsp">쿠키 test2</a></li>
		<li><a href="test/cookie_form3.jsp">쿠키 test3</a></li>
		<li><a href="test/popup.jsp">팝업 test1</a></li>
		<li><a href="test/popup2.jsp">팝업 test2</a></li>
		
		<li><a href="test/el_test.jsp">EL test1</a></li>
		<li><a href="test/jstl_test.jsp">JSTL test1`</a></li>
		<li><a href="test/regular_ex.jsp">정규표현식 테스트1</a></li>
		<li><a href="fortune">오늘의 운세[MVC 테스트]</a></li>
		<li><a href="todo">할 일 목록보기[MVC 테스트]</a></li>
		<li><a href="file">파일 목록보기[MVC 테스트]</a></li>
		<li><a href="file_list">파일 리스트[MVC 테스트]</a></li>
		
		<svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	 		 <path fill-rule="evenodd" d="M11.293 1.293a1 1 0 0 1 1.414 0l2 2a1 1 0 0 1 0 1.414l-9 9a1 1 0 0 1-.39.242l-3 1a1 1 0 0 1-1.266-1.265l1-3a1 1 0 0 1 .242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"/>
	  		<path fill-rule="evenodd" d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 0 0 .5.5H4v.5a.5.5 0 0 0 .5.5H5v.5a.5.5 0 0 0 .5.5H6v-1.5a.5.5 0 0 0-.5-.5H5v-.5a.5.5 0 0 0-.5-.5H3z"/>
		</svg>
		<li><a href="javascript: showPopup();">로그인 페이지 팝업</a><br/></li>
		<script>
		function showPopup(){
			window.open("./users/loginform2.jsp","로그인창","width=400,height=300,top=100,left=100");
		}
		</script>
	</ul>
</div>
</body>
</html>