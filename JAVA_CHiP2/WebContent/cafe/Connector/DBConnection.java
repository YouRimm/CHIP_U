package Connector;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnection {
    private Connection con;
    private Statement st;
    private ResultSet rs;

    public DBConnection() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seat_reserve?characterEncoding=UTF-8&serverTimezone=UTC", "root", "qhtjs!0104!");
            st = con.createStatement();
        } 
        catch(Exception e) {
            System.out.println("stranger(SQL Driver stranger)" + e.getMessage());
        }
    }

    public String inquiryResult(String rDate, String rTime, String result) {
        try{
            String SQL = "SELECT * FROM seat_status WHERE rDate = " + rDate + " AND rTime = " + rTime + ";";
            rs = st.executeQuery(SQL);
            while(rs.next()){
                result = result.concat(rs.getString("rSeat"));
            }
            return result;
        } 
        catch(Exception e) {
            System.out.println("stranger(SQL Query stranger)" + e.getMessage());
            //stranger 라고한거 막 삡땍 이런글자 부분들임
            return "";
        }
    }
}
