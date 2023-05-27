package com.lec.filter;

import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class NullParameterReqWrapper extends HttpServletRequestWrapper {

	private Map<String, String[]> paramsMap = null;
	
	public NullParameterReqWrapper(HttpServletRequest req) {
		super(req);
		paramsMap = new HashMap<String, String[]>(req.getParameterMap());
		
	}
	//localhost:8088/jsp07_filter/jsp01_nullparam.jsp?id=hong&name=gildong&member=true
	public void checkNull(String[] paramNames) {
		for(int i=0; i<paramNames.length; i++) {
			//System.out.println("checkNull = " + paramNames[i]);
			String key = paramNames[i];
			String[] values = null;
			
			if(!paramsMap.containsKey(key)) {
				if(key.equals("id")) values = new String[] {"사용자 아이디를 입력하세요"};
				if(key.equals("name")) values = new String[] {"사용자 이름을 입력하세요"};
				paramsMap.put(key, values);
			}
		}
	}
	@Override
	public String getParameter(String name) {
		String[] values = getParameterValues(name);
		if(values != null && values.length>0) return values[0];
		return null;
	}
	@Override
	public Map<String, String[]> getParameterMap() {
		// TODO Auto-generated method stub
		return paramsMap;
	}
	@Override
	public Enumeration<String> getParameterNames() {
		return Collections.enumeration(paramsMap.keySet());
	}
	@Override
	public String[] getParameterValues(String name) {
	return (String[])paramsMap.get(name);
	}
	
}
