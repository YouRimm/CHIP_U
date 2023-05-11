package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

	public static Connection getConnection() {
		
		try {
			String dbURL = "jdbc:mysql://localhost:3306/chip"; 
			String dbID = "root";
			String dbPassword = "private pw";
			Class.forName("com.mysql.jdbc.Driver");

			return DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {

			e.printStackTrace(); // ¿À·ù°¡ ¹«¾ùÀÎÁö Ãâ·Â

	}
		return null;
	}
	
}
