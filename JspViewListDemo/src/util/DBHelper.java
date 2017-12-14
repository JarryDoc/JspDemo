package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
	
	private static final String driver = "com.mysql.jdbc.Driver";//数据库驱动
	private static final String url = "jdbc:mysql://127.0.0.1:3306/world?useUnicode=true&characterEncoding=utf-8";
	private static final String username = "root";
	private static final String password = "root";
	
	private static Connection conn = null;
	//静态代码块负责加载驱动
	static {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//单例，返回数据库连接对象
	public static Connection getConnection() throws Exception {
		if(conn == null) {
			conn = DriverManager.getConnection(url, username, password);
			return conn;
		}else {
			return conn;
		}
	}
	
	public static void main(String[] args) {
		try {
			Connection conn = DBHelper.getConnection();
			if (conn!=null) {
				System.out.println("11111111");
			}else {
				System.out.println("22222222");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
