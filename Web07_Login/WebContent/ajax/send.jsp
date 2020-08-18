<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); //한글 인코딩
	String msg=request.getParameter("msg");
	System.out.println(msg);
%>
{"isSuccess":true} 
<%-- 방의 이름은 " " 안에 넣어야하고 올 수 있는 데이터 타입은 숫자 문자 true, false, { } , [ ], null
 ex){"isSuccess":true, {"num":1, "name":김구라} or [10,20,30] 등등   --%>