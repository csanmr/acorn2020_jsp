package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dto.MemberDto;
@WebServlet("/send")
public class SendServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<MemberDto> list=new ArrayList<MemberDto>();
		//응답인코딩설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 type 설정
		resp.setContentType("text/html;charset=utf-8");
		//한글 깨지지않도록 요청인코딩 설정
		req.setCharacterEncoding("utf-8");
				PrintWriter pw=resp.getWriter();
			
				//name="msg"에 입력한 문자열(value) 읽어오기
				String result=req.getParameter("msg");
				System.out.println("msg : "+result);
				//List<MemberDto> result=new ArrayList<MemberDto>();
				
				pw.println("<!doctype html>");
				pw.println("<html>");
				pw.println("<head");
				pw.println("<meta charset='utf-8'/>");
				pw.println("<title>회원의 말 페이지</title>");
				pw.println("<link rel='stylesheet' href='/Web02_Servlet/css/bootstrap.css'/>");
				pw.println("</head>");
				pw.println("<body>");
				pw.println("말 : "+result);  //이것만 있어도 보내는 짐 아래는 내가 목록에 넣고싶어서 한 것
				pw.println("<div class='container'>");
				pw.println("<h1>전달 한 말 목록.</h1>");
				
				pw.println("<table class='table table-dark'>");
					pw.println("<tr>");
						pw.println("<th>한 말</th>");
					pw.println("</tr>");
					for(int i=0; i<list.size(); i++) {
						MemberDto d=list.get(i);
						pw.println("<tr>");
							pw.println("<td>"+d.getName()+"</td>");
						pw.println("</tr>");
						}
				pw.println("</table>");
				pw.println("</div>");
				

				pw.println("<body/>");
				pw.println("</html>");
				pw.close();
	}

}
