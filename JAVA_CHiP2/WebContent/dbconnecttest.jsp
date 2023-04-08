<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연결</title>
</head>
<body>
	<h3>데이터베이스 연결 테스트</h3>
	<%
		Connection conn = null;
		Statement state = null;
		ResultSet re = null;
		String driver = "com.mysql.jdbc.Driver";
		
		// 							db주소 : 포트번호/db명
		String url = "jdbc:mysql://localhost:3306/chip";//3306뒤에 :db이름  추가하면 됨
		String uId = "root";	// 유저 ID
		String uPw = "dpzbdpf12!";	// 유저 PW
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uId, uPw);
			if(conn != null){
				out.println("데이터베이스 연결 성공(칩2)");
			}
			else{
				out.println("데이터베이스 연결 실패..");
			}
		}
		catch(Exception e){
			out.println(e.getMessage());
		}
		finally{
			conn.close();
		} 
	%>
</body>
</html>
