package common;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect {
public Connection con;
public Statement stmt;
public PreparedStatement psmt;
public ResultSet rs;

public JDBConnect() {
	try {
		Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/test";
			String id="root";
			String pwd="whwlstjr1!";
			
			//Create DB Connection
			con=DriverManager.getConnection(url,id,pwd);
			System.out.println("DB 연결 성공 (기본 생성자)");
				}catch(Exception e) {
					e.printStackTrace();
				}
}
public JDBConnect(String driver,String url, String id, String pwd) {
	try {
		Class.forName(driver);
		con=DriverManager.getConnection(url,id,pwd);
		System.out.println("db연결 성공(인수생성자1)");
	}catch(Exception e) {
		e.printStackTrace();
	}
}

public JDBConnect(ServletContext application) {
	try {
		
	}catch(Exception e) {
		e.printStackTrace();
	}
}
public void close() {
	try {
		if(rs!=null) rs.close();
		if(stmt!=null) stmt.close();
		if(psmt!=null) psmt.close();
		if(con!=null) con.close();
		System.out.println("JDBC 자원 해제");
	}catch(Exception e) {
		e.printStackTrace();
	}
}
}
