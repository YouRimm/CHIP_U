package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

	public static Connection getConnection() {
		
		try {
			String dbURL = "jdbc:mysql://localhost:3306/chip"; 
			String dbID = "root";
			String dbPassword = "dpzbdpf12!";
			Class.forName("com.mysql.jdbc.Driver");

			return DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {

			e.printStackTrace(); // 오류가 무엇인지 출력

	}
		return null;
	}
	
}
