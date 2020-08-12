<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
	<h1>인덱스 페이지 입니다.</h1>
	<div class="container">
	<jsp:include page="./include/navbar3.jsp">
		<jsp:param value="index" name="thisPage"/>
	</jsp:include>
	<ul>
		<li><a href="test1/main.jsp">include 디렉티브</a></li>
		<li><a href="test2/main.jsp">include 디렉티브2</a></li>
		<li><a href="test3/main.jsp">jsp include</a></li>		
		<li><a href="test4/main.jsp">jsp include2</a></li>		
		<li><a href="test5/home.jsp">home</a></li>		
		<li><a href="test5/game.jsp">game</a></li>
		<li><a href="test5/study.jsp">study</a></li>
		<li><a href="test6/home.jsp">navbar include example</a></li>
		
	</ul>
	</div>
	
	
	<h1>여기부터 시험으로 썼다</h1>
	<button type="button" class="btn btn-outline-success">전송</button>
	<div class="alert alert-danger" role="alert">삭제했습니다.</div>
	
	<nav aria-label="breadcrumb">
  		<ol class="breadcrumb">
    		<li class="breadcrumb-item"><a href="#">home</a></li>
    		<li class="breadcrumb-item"><a href="#">game</a></li>
    		<li class="breadcrumb-item active" aria-current="page">study</li>
		</ol>
	</nav>
<form>
  <div class="form-group">
    <label for="email">email</label>
    <input type="text" class="form-control is-invalid" id="email">
    	<div class="invalid-feedback">
        	형식이 달라요
      	</div>
  </div>
 </form>
 
 <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">작성자</th>
      <th scope="col">내용</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>김구라</td>
      <td>공부하기</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>원숭이</td>
      <td>바나나 먹기</td>
    </tr>
  </tbody>
</table>
<div class="btn-group" role="group">
    <button type="button" class="btn btn-primary">상</button>
    <button type="button" class="btn btn-success">중</button>
    <button type="button" class="btn btn-danger">하</button>
 </div>
	<br /><br />
<div class="card">
  <div class="card-body">
    <h5 class="card-title">카드 제목</h5>
    <p class="card-text">카드 내용 입니다.</p>
    <a href="#" class="btn btn-warning">수정</a>
  </div>
</div>	

<div class="container">



<ul class="list-group">
  <li class="list-group-item">강아지</li>
  <li class="list-group-item  active">고양이</li>
  <li class="list-group-item">원숭이</li>
  <li class="list-group-item">코끼리</li>
  <li class="list-group-item">호랑이</li>
</ul>

<br /><br /><br /><br /><br /><br /><br />


<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="#">하나</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="#">두울</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">세엣</a>
  </li>
</ul>


<br /><br /><br /><br /><br /><br /><br />



</div>	
	
	
</body>
</html>