package user;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.ArrayList;

public class UserDAO {

	
	private Connection conn; // connection:db에접근하게 해주는 객체
	private PreparedStatement pstmt;
	private ResultSet rs;


	// db에 접속해 주는 부분

	public UserDAO() { // 생성자 실행될때마다 자동으로 db연결이 이루어 질 수 있도록함

		try {
			String dbURL = "jdbc:mysql://localhost:3306/chip"; 
			String dbID = "root";
			String dbPassword = "dpzbdpf12!";
			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {

			e.printStackTrace(); // 오류가 무엇인지 출력

		}

	}

	// 로그인기능

	
	public int login(String id, String pw) {
		String sql = "SELECT pw FROM users WHERE id = ?";
		try {			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			// rs:result set 에 결과보관

			rs = pstmt.executeQuery();

			// 결과가 존재한다면 실행
			if (rs.next()) {

				// 패스워드 일치한다면 실행
				if (rs.getString(1).equals(pw)) {

					return 1; // 성공

				} else

					return 0; // 비밀번호 불일치
			}

			return -1; // 아이디가 없음 오류

		} catch (Exception e) {

			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}
	 
	
	
	public int signup (UserDTO user) {
		String sql = "insert into user values(?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			pstmt.setString(3, null);
			
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	
	public int select (String selected_menu, String id) {

		String set1 = "";
		String set2 = "";
//		String sql = "INSERT INTO selected_menu(selected_m_name, selected_m_price) SELECT menu_name,menu_price FROM menulist WHERE menu_num = ?;";
		String sql = "SELECT menu_name, menu_price FROM menulist WHERE menu_num = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, selected_menu);
			
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				set1 = rs.getString(1);
				set2 = rs.getString(2);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		String sql1 = "INSERT INTO selected_menu(selected_m_name, selected_m_price, id) VALUES (?, ?, ?);";
		try {
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, set1);
			pstmt.setString(2, set2);
			pstmt.setString(3, id);
			
			
			System.out.println(set1);
			
			
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	
	public ArrayList<UserDTO> bucket() {
//		String sql = "UPDATE users SET selected_menu = (SEL(SELECT menu_name FROM menulist WHERE menu_num = ?)) WHERE id = ?";
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, selected_menu);
//			pstmt.setString(2, id);
//			System.out.println(selected_menu);
//			System.out.println(id);
//			
//			return pstmt.executeUpdate();
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
//		return -1;
		
		String sql = "SELECT * FROM selected_menu;";
		
		ArrayList<UserDTO> list = new ArrayList<UserDTO>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				UserDTO user = new UserDTO();
				user.setMenu_name(rs.getString(1));
				user.setMenu_price(rs.getString(2));
				user.setId(rs.getString(3));
				list.add(user);
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	
	public ArrayList<UserDTO> order() {
		
		
		String sql = "SELECT selected_m_name, id FROM selected_menu;";
		
		ArrayList<UserDTO> list = new ArrayList<UserDTO>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				UserDTO user = new UserDTO();
				user.setMenu_name(rs.getString(1));		
				user.setId(rs.getString(2));		
				list.add(user);
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public int reserve (String[] time_check, String id) {

		int count = time_check.length;
		
		String sql = "UPDATE timetable SET c0 = ? WHERE line = ?;";
		
		try {
			pstmt = conn.prepareStatement(sql);
		
			for(int i = 0; i < count; i ++) {
				int a = Integer.parseInt(time_check[i]);
			
					
				pstmt.setString(1, id);
				pstmt.setInt(2, a);
								
				pstmt.addBatch();
				pstmt.clearParameters();
							
			
		}

		pstmt.executeBatch();
		return 1;
		
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
public ArrayList<UserDTO> table() {
		
		
		String sql = "SELECT c0 FROM timetable;";
		
		ArrayList<UserDTO> list = new ArrayList<UserDTO>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				UserDTO user = new UserDTO();
				user.setRes_inf(rs.getString(1));			
				list.add(user);
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


public int seatDelete (String id) {
	String sql = "UPDATE timetable SET c0 = NULL WHERE c0 = ?;";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		System.out.println(id);
		
		return pstmt.executeUpdate();
	}catch (Exception e) {
		e.printStackTrace();
	}
	return -1;
}

}


