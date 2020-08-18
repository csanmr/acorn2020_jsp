<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/ajax/test02.jsp</title>
</head>
<body>
	<input type="text" id="msg" placeholder="서버에 할 말 입력"/>
	<button id="sendBtn">전송</button>
	<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
	<script>
		/*
		 전송버튼을 눌렀을 때 입력한 문자열을 읽어와서
		 /ajax/send.jsp 페이지에 post방식으로 전송해보세요.
		 입력한 문자열은 msg라는 파라미터 명으로 전송하기
		 send.jsp 페이지에서는 전송된 내용을 서버측 콘솔에 출력해보세요
		 send.jsp 페이지에서는 응답은 json 형식 {"isSuccess":true}를 응답해보세요.
		 클라이언트에서는 서버가 응답한 데이터를 클라이언트 측 콘솔에 출력해보세요.
		*/
		$("#sendBtn").on("click",function(){
			//입력한 문자열을 읽어와서 변수에 담기
			var msg=$("#msg").val();
			$.ajax({
				method:"post",
				url:"send.jsp",
				data : "msg="+msg, // data : {msg:msg} 둘 중 하나의 방법 사용
			success:function(data){
				//data는 is{isSuccess:true}인 object이다
				console.log(data);
				}
			});
		});
	</script>
</body>
</html>