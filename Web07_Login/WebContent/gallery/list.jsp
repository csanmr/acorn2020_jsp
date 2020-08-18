<%@page import="test.gallery.dao.GalleryDao"%>
<%@page import="test.gallery.dto.GalleryDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
<%
	
	//한 페이지에 나타낼 row 의 갯수
	final int PAGE_ROW_COUNT=5;

	
	//보여줄 페이지의 번호
	int pageNum=1;
	
	//보여줄 페이지 데이터의 시작 ResultSet row 번호
	int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
	//보여줄 페이지 데이터의 끝 ResultSet row 번호
	int endRowNum=pageNum*PAGE_ROW_COUNT;
	
	//전체 row 의 갯수를 읽어온다.
	int totalRow=GalleryDao.getInstance().getCount();
	//전체 페이지의 갯수 구하기
	int totalPageCount=
			(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);

	// GalleryDto 객체에 위에서 계산된 startRowNum 과 endRowNum 을 담는다.
	GalleryDto dto=new GalleryDto();
	dto.setStartRowNum(startRowNum);
	dto.setEndRowNum(endRowNum);
	List<GalleryDto> list=GalleryDao.getInstance().getList(dto);
%>

<div class="container">
<a href="private/upload_form.jsp">업로드하러 가기</a>
	<h1>갤러리 목록 입니다.</h1>
	<%for(GalleryDto tmp:list){ %>
		<div class="wrapper">
			<img style="width:120px; height:120px;" src="${pageContext.request.contextPath}<%=tmp.getImagePath() %>" />
			<p><%=tmp.getCaption() %></p>
			<p>
				<strong><%=tmp.getWriter() %></strong>
				<strong><%=tmp.getRegdate() %></strong>
			</p>
		</div>
	<%}%>
</div>
<div class="loader"><img src="${pageContext.request.contextPath}/images/ajax-loader.gif" /></div>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
<script>
	//페이지가 처음 로딩될때 1page를 보여준다고 가정
	var currentPage=1;
	//전체 페이지의 수를 javascript변수에 담아준다.
	var totalPageCount=<%=totalPageCount%>;
	//ajax 요청이 응답되었는지 여부
	var isSuccess=false;
	
	//웹브라우저에 scroll이벤트가 일어났을 때 실행할 함수 등록
	$(window).on("scroll", function(){
		if(currentPage==totalPageCount){ //만일 마지막 페이지 이면
			return; //함수를 여기서 종료한다.
		}
		//위쪽으로 스크롤된 길이 구하기
		var scrollTop=$(window).scrollTop();
		//window의 높이
		var windowHeight=$(window).height();
		//document(문서)의 높이
		var documentHeight=$(document).height();
		//바닥까지 스크롤 되었는지 여부
		var isBottom=scrollTop+windowHeight+10>=documentHeight;
		if(isBottom){ //만일 바닥까지 스크롤했다면
			$(".loader").show();
			currentPage++;
			//해당 페이지의 내용을 ajax요청을 해서 받아온다.
			$.ajax({
				url:"ajax_list.jsp",
				method:"get",
				data:{pageNum:currentPage},
				success:function(data){
					console.log(data);
					//data가 html마크업형태의 문자열
					$(".container").html(data);
					//로딩이미지를 숨긴다
					$(".loader").hide();
				}
			});
		}
	});
</script>
</body>
</html>