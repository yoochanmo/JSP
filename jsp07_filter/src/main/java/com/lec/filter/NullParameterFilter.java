package com.lec.filter;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.annotation.processing.Filer;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/*
	필터(filter)란?
	
	filter는 jsp/servlet에서 요청이 들어오면 요청을 처리하기 전에 이 요청이 올바른 요청인지 또는 특정
	자원에 접근권한이 있는지 등을 사전에 처리할 수 있도록 한다. 또한 응답하는 데이터를 변경하거나 응답을
	취소할 수가 있다. 즉, Http의 request와 response의 내용을 변경할 수 있도록 지원하는 객체이다.
	
	필터는 객체형태로 클라이언트에서 요구하는 요청과 웹서버(jsp, servlet...)의 사이에 위치하여 클라이언
	트의 요청을 제어할 수 있도록 한다. 또한, 웹서버와 응답처리 사이에 위치하여 응답을 제어할 수 있다.
	
	즉, 필터는 웹브라웢의 요청을 필터의 체인으로 연결해서 다으단계로 보낼 수도 있고 다른 형태의 결과를
	웹브라우저에 전송할 수도 있다.
	
	A. 필터를 구현하기 위해서는 3개의 핵심 class가 필요하다.
	
	   1. javax.servlet.Filter : 웹브라우저와 최종 resource사이에 위치하는 필터를 구현할 인터페이스
	   2. javax.servlet.ServletRequestMapper : 필터가 요청한 결과를 저장하는 클래스
	   3. javax.servlet.ServletResponseMapper: 필터가 응답한 결과를 저장하는 클래스
	
	B. Filter인터페이스의 관련메서드
	
	   1. init()    : 필터를 초기화할 때 사용하는 메서드
	   2. doFilter(): 필터기능을 수행하는 추상메서드, FilterChain.chaint()메서드를 이용해서 다음 필터로 이동
	   3. destory() : 필터가 웹컨테이너에서 삭제될 때 호출되는 메서드
	
	C. 필터의 구현절차
	
	   1. init()메서드를 호출해서 초기화 작업을 수행
	   2. doFilter()
	   
	      a. request파라미터를 이용해서 요청의 필터작업을 수행
	      b. chain.doFilter(req, res)를 이용하여 체인의 다음필터로 이동
	      c. response를 이용해서 응답의 필터링 작업을 수행
	   
	   3. destory(): 필터가 사용한 자원을 해제
	
*/
public class NullParameterFilter implements Filter {

	private String[] paramNames = null;
	
	@Override
	public void init(FilterConfig conf) throws ServletException {
		String params = conf.getInitParameter("parameterNames");
		StringTokenizer st = new StringTokenizer(params, ",");
		
		paramNames = new String[st.countTokens()]; // 배열생성(크기)
		
		for(int i=0;st.hasMoreTokens();i++) {
			paramNames[i] = st.nextToken();
			//System.out.println(paramNames[i]);
		}
	}
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		NullParameterReqWrapper reqMapper = new NullParameterReqWrapper((HttpServletRequest)req);
		reqMapper.checkNull(paramNames);
		chain.doFilter(reqMapper, res);
	}

	private void detory() {
		Filter.super.destroy();
	}
}
