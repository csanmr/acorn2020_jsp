package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
/*
 *  [ 요청을 가로채서 중간에 원하는 작업을 할 수 있는 필터 만들기 ]
 *  
 *  1. javax.servlet.Filter 인터페이스를 구현한다.
 *  2. web.xml 문서에 필터를 정의하고 맵핑한다. (프로젝트 우클릭 JavaEETool에서 Generate로 web.xml만듬)
 *     서버는 실행되는 순간에 web.xml을 보고 준비 작업을 한다.
 *  3. doFilter()메소드 안에서 원하는 작업을 한다.
 */
public class EncodingFilter implements Filter {
	//인코딩 정보를 저장할 필드 선언
	private String encoding;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	//필터가 동작해야 할 때 호출되는 메소드
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		//1. 요청 인코딩이 설정되지 않았다면
		if(request.getCharacterEncoding()==null) {
		//인코딩 설정하기
		request.setCharacterEncoding(encoding);
		}
		//2. 요청의 흐름 계속 이어가기
		chain.doFilter(request, response);
	}
	//필터가 최초 사용될 때 1번 호출되는 메소드
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		//web.xml 문서에 있는 내용을 읽어서 필드에 저장한다.
		encoding=filterConfig.getInitParameter("encoding");
	}

}
