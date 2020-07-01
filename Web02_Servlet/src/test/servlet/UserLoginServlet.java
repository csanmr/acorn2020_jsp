package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/user/login")
public class UserLoginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String ids=req.getParameter("id");
		String pwds=req.getParameter("pwd");
		PrintWriter pw=resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>로그인 페이지</title>");
		pw.println("<link rel='stylesheet' href='/Web02_Servlet/css/bootstrap.css' />");
		pw.println("</head>");
		pw.println("<body>");
		
		pw.println("<div class='container'>");
		
			if(ids.equals("gura") && pwds.equals("1234")) {//로그인 정보가 맞는 경우
				pw.println("<p class='alert alert-success'>"+ids+" 님이 로그인 되었습니다."
						+ "<a class='alert-link' href='../index.html'>확인</a> </p>");
			}else { //로그인 정보가 틀린 경우
				pw.println("<p class='alert alert-danger'> 아이디 혹은 비밀번호가 틀려요. </p>");
			}
			
		pw.println("</div>");
		
		pw.println("<body/>");
		pw.println("</html>");
		pw.close();
	}

}
