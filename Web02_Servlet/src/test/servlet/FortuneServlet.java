package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/sub/fortune")
public class FortuneServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//응답 인코딩설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 설정
		resp.setContentType("text/html;charset=utf-8");
		/*내가한것
		PrintWriter pw=resp.getWriter();
		Random ran=new Random();
			String[] rs=new String[5];
			rs[0]="로또사세요";
			rs[1]="오늘 조심";
			rs[2]="로또 사지마세요";
			rs[3]="집에서 휴식";
			rs[4]="운동하세요";
			int rn=ran.nextInt(5);
			pw.println(rs[rn]);
			pw.close();
			*/
			//클라이언트의 웹브라우저에 문자열을 출력할 수 있는 객체의 참조값 얻어오기
			PrintWriter pw=resp.getWriter();
			pw.println("<!doctype html>");
			pw.println("<html>");
			pw.println("<head");
			pw.println("<meta charset='utf-8'/>");
			pw.println("<title>운세보기</title>");
			pw.println("</head>");
			pw.println("<body>");
			//sample 운세 5개를 미리 배열에 준비하기
			String[] fortunes= {"하나", "두울", "세엣", "네엣", "다섯"};
			//랜덤객체
			Random ran=new Random();
			//0~4사이의 랜덤한 정수 얻어내기
			int rannum=ran.nextInt(5);
			pw.println("<p>오늘의 운세:"+fortunes[rannum]+ "</p>");
			pw.println("<img src='../images/kim1.png'/>");
			pw.println("<img src='/Web02_Servlet/images/kim1.png'/>");
			pw.println("<body/>");
			pw.println("</html>");
			pw.close();
	}
}
