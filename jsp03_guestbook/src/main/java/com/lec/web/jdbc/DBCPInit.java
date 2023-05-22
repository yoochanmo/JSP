package com.lec.web.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.catalina.ha.session.DeltaManager;
import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

public class DBCPInit extends HttpServlet {

	@Override
	public void init() throws ServletException {
		loadJDBCDriver();
		initConnectionPool();
	}
	
	private void loadJDBCDriver() {
		// Class.forName("org.mariadb....."); 대신에
		// web.xml에 정의하고 로딩
		String driverClass = getInitParameter("jdbcDriver");
		
		try {
			Class.forName(driverClass);
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("JDBC드라이버로딩실패!! = " +
				"web.xml 초기화 파라미터 jdbcDriver를 확인하세요!!");
		}
		
	}

	private void initConnectionPool() {
		
		String url = getInitParameter("url");
		String usr = getInitParameter("user");
		String pwd = getInitParameter("pass");
		
		// CP을 정의하기 위해서 Library를 등록(WEB-INF/lib)
		// commons-dbcp2-2.9.0.jar, 
		// commons-pool2-2.11.1.jar, 
		// commons-logging-1.2.jar
		
		// A. Connection Factory생성
		// 1. 커넥션풀이 새로운 커넥션을 생성할 때 사용하는 커넥션팩토리를 생성
		ConnectionFactory cf = new DriverManagerConnectionFactory(url, usr, pwd);
	
		// 2. PoolableConnection생성 - 팩토리생성 DBCP는 커넥션풀에 커넥션을 보관할 때
		// PoolableConnection을 사용한다. 이 클래스는 내부적으로 커넥션을 보관하고 있으며
		// 커넥션을 관리하는 데 필요한 기능을 제공한다.
		// 예를 들어서 connection을 close하면 connection을 메모리에서 삭제하는 것이 아니라
		// Connection Pool에 Connection을 반환을 한다.
		PoolableConnectionFactory pcf = new PoolableConnectionFactory(cf, null);	
		
		// 3. Connection이 유효한지를 검사하기 위한 SQL을 지정
		// Connction유효여부검사 : mariadb, mysql - select 1; oracle - select * from dual;
		pcf.setValidationQuery("select 1"); 
		
		// B. Connection Pool설정정보
		// 1. 설정정보를 관리할 객체를 생성
		GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
		// 2. 커넥션의 검사주기
		poolConfig.setTimeBetweenEvictionRunsMillis(1000l * 60l * 5l); // 검사주기 5분
		// 3. 풀에 보관된 커넥션의 유효여부를 검사할지를 설정
		poolConfig.setTestWhileIdle(true);
		// 4. 사용할 Connection의 최소갯수를 지정
		poolConfig.setMinIdle(5);
		// 5. 사용할 Connection의 최대갯수를 지정
		poolConfig.setMaxIdle(10);
		
		// C. Connection Pool설정정보를 이용헤서 CP을 생성
		// 1. PoolableConnection을 생성할 때 사용할 커넥션팩토리와 설정정보를 
		// 이용해서 커넥션풀을 생성
		GenericObjectPool<PoolableConnection> cp = new GenericObjectPool<>(pcf, poolConfig);
		// 2. 생성된 커넥션을 풀에 연결
		pcf.setPool(cp);
		
		// D. Connection Pool에 제공할 JDBC드라이버를 등록
		try {
			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver = (PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
			String poolName = getInitParameter("poolName");
			driver.registerPool(poolName, cp);
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}