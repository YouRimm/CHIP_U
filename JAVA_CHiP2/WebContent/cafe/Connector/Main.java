package Connector;

public class Main {
    public static void main(String[] args) {
        DBConnection connection = new DBConnection();
        String rDate = "20201201";
        String rTime = "1";
        String result = "";
        result = connection.inquiryResult(rDate, rTime, result);
        System.out.println(result);
    }
}