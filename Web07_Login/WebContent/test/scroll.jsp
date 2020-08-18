<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.spacer{
		height: 500px;
		background-color: #999;
		border: 1px solid green;
	}
	.container{
		width:768px;
		margin:0 auto;
	}
	.loader{
		position: fixed; /* 좌하단 고정된 위치에 배치하기 위해 */
		width: 100%;
		left: 0;
		bottom: 0;
		text-align: center; /* 이미지를 좌우로 가운데 정렬 */
		z-index: 1000;
		display: none; /* 일단 숨겨놓기 */
		
	}
</style>
</head>
<body>
<div class="container">
<div class="loader"><img src="${pageContext.request.contextPath}/images/ajax-loader.gif" /></div>
	<h1>스크롤 테스트</h1>
	<div class="spacer"></div>
	<div class="spacer"></div>
	<div class="spacer"></div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
<script>
//웹브라우저에 scroll이벤트가 일어났을 때 실행할 함수 등록
	$(window).on("scroll", function(){
		console.log("scroll!");
		//위쪽으로 스크롤된 길이 구하기
		var scrollTop=$(window).scrollTop();
		//window의 높이
		var windowHeight=$(window).height();
		//document(문서)의 높이
		var documentHeight=$(document).height();
		//바닥까지 스크롤 되었는지 여부
		var isBottom=scrollTop+windowHeight+10>=documentHeight;
		if(isBottom){ //만일 바닥까지 스크롤했다면
			//로딩이미지를 띄우고
			$(".loader").show();
			//ajax요청을 한다.(여기선 가상으로)
			setTimeout(function(){
				//원하는 작업을 한다.
				$("<div/>")
				.addClass("spacer")
				.appendTo(".container")
				.hide()
				.fadeIn(1000);
				//로딩이미지 숨기기
				$(".loader").hide();
			},3000);
			
			
		}
	});
</script>
</body>
</html>